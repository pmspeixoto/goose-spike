#!/usr/bin/env bash
#
# Roll back migration committed in the current commit. If the
# migration is not the latest migration, the rollback will fail.

while getopts :hH:p:d:P:t:i:u:f: opts; do
   case ${opts} in
      h) show_some_help; exit ;;
      H) MYSQL_HOST=${OPTARG} ;;
      P) MYSQL_PORT=${OPTARG} ;;
      d) MYSQL_DATABASE=${OPTARG} ;;
      u) MYSQL_USER_SECRET=${OPTARG} ;;
      p) MYSQL_PASSWORD_SECRET=${OPTARG} ;;
      i) PROJECT_ID=${OPTARG} ;;
      t) TARGET=${OPTARG} ;;
      f) SOURCE=${OPTARG} ;;
      \?) show_some_help; exit ;;
   esac
done


#######################################
# Show some help.
# Arguments:
#   None
#######################################
function show_some_help() {
  echo '''
  Roll back migration committed in the current commit. If the
  migration is not the latest migration, the rollback will fail.
  Usage: rollback.sh -H mysql_host -P mysql_port -d mysql_database -u mysql_user_secret 
    -p mysql_password_secret -i project_id -f migration_files_source -t target_migration_number
  '''
}

gcloud config set project $PROJECT_ID

MYSQL_PASSWORD=$(gcloud secrets versions access latest --secret=$MYSQL_PASSWORD_SECRET)
MYSQL_USER=$(gcloud secrets versions access latest --secret=$MYSQL_USER_SECRET)

apt-get update -y && apt-get install -y default-mysql-client
curl -L https://github.com/golang-migrate/migrate/releases/download/v4.14.1/migrate.linux-amd64.tar.gz | tar xvz && mv migrate.linux-amd64 /usr/local/bin/migrate

#######################################
# Rollback migrations
#######################################

# Check the current migration number
CURRENT_MIGRATION_NUMBER=$(migrate -source file://${SOURCE} -database "mysql://${MYSQL_USER}:${MYSQL_PASSWORD}@tcp(${MYSQL_HOST}:${MYSQL_PORT})/${MYSQL_DATABASE}" version 2>&1)

n="$(($CURRENT_MIGRATION_NUMBER-$TARGET))"
migrate -source file://${SOURCE} -database "mysql://${MYSQL_USER}:${MYSQL_PASSWORD}@tcp(${MYSQL_HOST}:${MYSQL_PORT})/${MYSQL_DATABASE}"  down $n