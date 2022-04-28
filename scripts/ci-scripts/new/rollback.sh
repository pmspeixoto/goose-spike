#!/usr/bin/env bash
#
# Roll back migration committed in the current commit. If the
# migration is not the latest migration, the rollback will fail.

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

#gcloud config set project $PROJECT_ID

#MYSQL_PASSWORD=$(gcloud secrets versions access latest --secret=$MYSQL_PASSWORD_SECRET)
#MYSQL_USER=$(gcloud secrets versions access latest --secret=$MYSQL_USER_SECRET)

curl -fsSL \
    https://raw.githubusercontent.com/pressly/goose/master/install.sh |\
    sh 

#######################################
# Rollback migrations
#######################################

goose -dir ${SOURCE} mysql "${MYSQL_USER}:${MYSQL_PASSWORD}@tcp(${MYSQL_HOST}:3306)/${MYSQL_DATABASE}?parseTime=true" down-to $TARGET