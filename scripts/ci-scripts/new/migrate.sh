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
      a) ACTION=${OPTARG} ;; # action to perform migrate, seed or clean
      n) SLACK_NOTIFY=true ;; # to notify set to true
      g) CIRCLE_BUILD_URL=${OPTARG} ;; # to be used for slack notification
      \?) show_some_help; exit ;;
   esac
done

#######################################
# If any of the options were not provided, then default to
# the environment variables.
#######################################

#gcloud config set project $PROJECT_ID

#MYSQL_PASSWORD=$(gcloud secrets versions access latest --secret=$MYSQL_PASSWORD_SECRET)
#MYSQL_USER=$(gcloud secrets versions access latest --secret=$MYSQL_USER_SECRET)
MYSQL_PASSWORD=$MYSQL_PASSWORD_SECRET
MYSQL_USER=$MYSQL_USER_SECRET

curl -fsSL \
    https://raw.githubusercontent.com/pressly/goose/master/install.sh |\
    sh

case ${ACTION} in
  "migrate")
    #######################################
    # Apply migrations
    #######################################
    set +e
    touch /tmp/workspace/migration_versions.env

    # Get the current migration number
    CURRENT_MIGRATION_NUMBER=$(goose -dir ${SOURCE} mysql "${MYSQL_USER}:${MYSQL_PASSWORD}@tcp(${MYSQL_HOST}:3306)/${MYSQL_DATABASE}?parseTime=true" version 2>&1)
    CURRENT_MIGRATION_NUMBER=${CURRENT_MIGRATION_NUMBER:(-14)}

    if [[ $? -eq 1 ]]; then 
      echo "Failed to get current migration number"
      exit 1    
    elif [[ "$CURRENT_MIGRATION_NUMBER" == *"version 0"* ]]; then
      CURRENT_MIGRATION_NUMBER=0
    fi

    echo "Current migration number: $CURRENT_MIGRATION_NUMBER"
    touch /tmp/workspace/migration_versions.env
    echo "PREVIOUS_MIGRATION_NUMBER=$CURRENT_MIGRATION_NUMBER" >> migration_versions.env

    set -ex

    echo "Applying migrations"
    goose -allow-missing -dir ${SOURCE} mysql "${MYSQL_USER}:${MYSQL_PASSWORD}@tcp(${MYSQL_HOST}:${MYSQL_PORT})/${MYSQL_DATABASE}?parseTime=true" up

    # slack notification regarding the migration
    #SLACK_WEBHOOK_URL=$(gcloud secrets versions access latest --secret="migration_bot_webhook_url")
    #curl -X POST -H 'Content-type: application/json' --data '{"text":":space_invader: - Migration detected. <'${CIRCLE_BUILD_URL}'|  Link for the job on CircleCI>"}' ${SLACK_WEBHOOK_URL}
  ;;
  "seed")
      if [[ "$SEED_SOURCE" != "" ]]; then
        echo "Applying seeding data"
        goose -table "goose_seed_migrations" -allow-missing -dir ${SEED_SOURCE} mysql "${MYSQL_USER}:${MYSQL_PASSWORD}@tcp(${MYSQL_HOST}:${MYSQL_PORT})/${MYSQL_DATABASE}?parseTime=true" up
      fi
  ;;
  "clean")
      goose -dir ${SOURCE} mysql "${MYSQL_USER}:${MYSQL_PASSWORD}@tcp(${MYSQL_HOST}:${MYSQL_PORT})/${MYSQL_DATABASE}?parseTime=true" reset
      goose -allow-missing -dir ${SOURCE} mysql "${MYSQL_USER}:${MYSQL_PASSWORD}@tcp(${MYSQL_HOST}:${MYSQL_PORT})/${MYSQL_DATABASE}?parseTime=true" up
      goose -table "goose_seed_migrations" -allow-missing -dir ${SEED_SOURCE} mysql "${MYSQL_USER}:${MYSQL_PASSWORD}@tcp(${MYSQL_HOST}:${MYSQL_PORT})/${MYSQL_DATABASE}?parseTime=true" up
  ;;
esac

set +ex
exit 0