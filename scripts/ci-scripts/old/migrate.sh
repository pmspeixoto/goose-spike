#!/usr/bin/env bash
#
# Apply migration committed in the current commit, regardless of whether
# the current migration is before or after the committed migration.
# Note that if using this in CI, ensure that your commits are squashed into a single commit;
# Otherwise, this won't work.

#######################################
# Show some help.
# Arguments:
#   None
#######################################
function show_some_help() {
  echo '''
  Apply the migration committed in this commit.
  If this migration is prior to the current migration number, the
  migration will be manually applied. If it is greater,
  the usual migration command will be called.
  Optional arguments will retrieve their default values from the environment.
  Usage: migrate.sh -H mysql_host -P mysql_port -d mysql_database -u mysql_user_secret 
    -p mysql_password_secret -i project_id -f migration_files_source -a migrate
  '''
}

set -e
OPT_X=false
while getopts :hH:p:d:P:f:i:u:a:s:g: opts; do
   case ${opts} in
      h) show_some_help; exit ;;
      H) MYSQL_HOST=${OPTARG} ;;
      P) MYSQL_PORT=${OPTARG} ;;
      d) MYSQL_DATABASE=${OPTARG} ;;
      u) MYSQL_USER_SECRET=${OPTARG} ;;
      p) MYSQL_PASSWORD_SECRET=${OPTARG} ;;
      i) PROJECT_ID=${OPTARG} ;;
      f) SOURCE=${OPTARG} ;;
      s) SEED_SOURCE=${OPTARG} ;;
      a) ACTION=${OPTARG} ;; # action to perform migrate or drop
      n) SLACK_NOTIFY=true ;; # to notify set to true
      g) CIRCLE_BUILD_URL=${OPTARG} ;; # to be used for slack notification
      \?) show_some_help; exit ;;
   esac
done

#######################################
# If any of the options were not provided, then default to
# the environment variables.
#######################################

gcloud config set project $PROJECT_ID

MYSQL_PASSWORD=$(gcloud secrets versions access latest --secret=$MYSQL_PASSWORD_SECRET)
MYSQL_USER=$(gcloud secrets versions access latest --secret=$MYSQL_USER_SECRET)

apt-get update -y && apt-get install -y default-mysql-client

curl -L https://github.com/golang-migrate/migrate/releases/download/v4.14.1/migrate.linux-amd64.tar.gz | tar xvz && mv migrate.linux-amd64 /usr/local/bin/migrate

case ${ACTION} in
  "migrate")
    #######################################
    # Apply migrations
    #######################################
    set +e
    touch /tmp/workspace/migration_versions.env
    
    # Check the current migration number
    CURRENT_MIGRATION_NUMBER=$(migrate -source file://${SOURCE} -database "mysql://${MYSQL_USER}:${MYSQL_PASSWORD}@tcp(${MYSQL_HOST}:${MYSQL_PORT})/${MYSQL_DATABASE}" version 2>&1)
    if [[ $? -eq 1 ]]; then 
      if [[ "$CURRENT_MIGRATION_NUMBER" == *"no migration"* ]]; then
        CURRENT_MIGRATION_NUMBER=0
      else
        echo "Failed to get current migration number"
        exit 1
      fi
    fi

    echo "Current migration number: $CURRENT_MIGRATION_NUMBER"
    touch /tmp/workspace/migration_versions.env
    echo "PREVIOUS_MIGRATION_NUMBER=$CURRENT_MIGRATION_NUMBER" >> /tmp/workspace/migration_versions.env
    
    # Check if any migrations using git
    MIGRATIONS=$(git diff-tree --no-commit-id --name-only --diff-filter=A -r $CIRCLE_SHA1 | grep "^$SOURCE/.*up")
    
    # If no migrations in this commit, exit.
    if [[ -z $MIGRATIONS ]]; then
      migrate -source file://${SOURCE} -database "mysql://${MYSQL_USER}:${MYSQL_PASSWORD}@tcp(${MYSQL_HOST}:${MYSQL_PORT})/${MYSQL_DATABASE}" up
      exit
    fi
    
    # Get the latest committed migration number
    LATEST_COMMITTED_MIGRATION_NUMBER=$(echo $MIGRATIONS | tail -1 | sed -r 's/.*\/([0-9]{4})_.*/\1/'  | sed 's/^0*//')
    
    set -ex
    
    # If current migration number > committed migrations, then apply them manually
    if [ "$CURRENT_MIGRATION_NUMBER" -gt "$LATEST_COMMITTED_MIGRATION_NUMBER" ]; then
      # Manually apply
      while IFS= read -r file; do
        echo "Manually applying migration $file..."
        mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -h$MYSQL_HOST $MYSQL_DATABASE < $file
      done <<< "$MIGRATIONS"
    else
      echo "Defaulting to applying migration normally..."
      migrate -source file://${SOURCE} -database "mysql://${MYSQL_USER}:${MYSQL_PASSWORD}@tcp(${MYSQL_HOST}:${MYSQL_PORT})/${MYSQL_DATABASE}" up
    fi

    # slack notification regarding the migration
    SLACK_WEBHOOK_URL=$(gcloud secrets versions access latest --secret="migration_bot_webhook_url")
    curl -X POST -H 'Content-type: application/json' --data '{"text":":space_invader: - Migration detected. <'${CIRCLE_BUILD_URL}'|  Link for the job on CircleCI>"}' ${SLACK_WEBHOOK_URL}
  ;;
  "clean")
      echo "y" | migrate -source file://${SOURCE} -database "mysql://${MYSQL_USER}:${MYSQL_PASSWORD}@tcp(${MYSQL_HOST}:${MYSQL_PORT})/${MYSQL_DATABASE}" drop
      migrate -source file://${SOURCE} -database "mysql://${MYSQL_USER}:${MYSQL_PASSWORD}@tcp(${MYSQL_HOST}:${MYSQL_PORT})/${MYSQL_DATABASE}" up
      migrate -source file://${SEED_SOURCE} -database "mysql://${MYSQL_USER}:${MYSQL_PASSWORD}@tcp(${MYSQL_HOST}:${MYSQL_PORT})/${MYSQL_DATABASE}?x-migrations-table=schema_seed_migrations" up
  ;;
esac


set +ex
exit 0