#!/usr/bin/env bash
set -e

while getopts :a:d:D:H:P:u:p:s opts; do
   case ${opts} in
      H) MYSQL_HOST=${OPTARG} ;; # database host
      P) MYSQL_PORT=${OPTARG} ;; # database port
      u) MYSQL_USER=${OPTARG} ;; # database user
      d) MYSQL_DATABASE=${OPTARG} ;; # database name
      p) MYSQL_PASSWORD=${OPTARG} ;; # database password
      s) FROM_SECRETS='true' ;; # whether to load secrets from secret manager. If not provided, manually provide user with -u and password with -p.
      a) ACTION=${OPTARG} ;; # action to perform (create, migrate, seed or drop)
      D) DIRECTION=${OPTARG} ;; # direction of action (up, down)
   esac
done

case ${MYSQL_DATABASE} in
  *"preview"*)
    ENV_SEED="seed_migration/env/preview"
  ;;
  *"staging"*)
    ENV_SEED="seed_migration/env/staging"
  ;;
  *"dev"*)
    ENV_SEED="seed_migration/env/dev"
  ;;
esac

case ${ACTION} in
  "migrate")
    SOURCE="migration/queries"
  ;;
esac

if [[ "$FROM_SECRETS" == "true" ]]; then
  MYSQL_PASSWORD=$(gcloud secrets versions access latest --secret=mysql_password)
  MYSQL_USER=$(gcloud secrets versions access latest --secret=mysql_user)
fi

case ${ACTION} in
  "create")
    mysql -h ${MYSQL_HOST} -P ${MYSQL_PORT} -u ${MYSQL_USER} -p${MYSQL_PASSWORD} -e "CREATE DATABASE ${MYSQL_DATABASE}"
  ;;
  "migrate")
    case ${DIRECTION} in
      "up")
        echo goose -allow-missing -dir ${SOURCE} mysql "${MYSQL_USER}:${MYSQL_PASSWORD}@tcp(${MYSQL_HOST}:${MYSQL_PORT})/${MYSQL_DATABASE}?parseTime=true" ${DIRECTION}
        goose -allow-missing -dir ${SOURCE} mysql "${MYSQL_USER}:${MYSQL_PASSWORD}@tcp(${MYSQL_HOST}:${MYSQL_PORT})/${MYSQL_DATABASE}?parseTime=true" ${DIRECTION}
        ;;
      "down")
        echo goose -dir ${SOURCE} mysql "${MYSQL_USER}:${MYSQL_PASSWORD}@tcp(${MYSQL_HOST}:${MYSQL_PORT})/${MYSQL_DATABASE}?parseTime=true" ${DIRECTION}
        goose -dir ${SOURCE} mysql "${MYSQL_USER}:${MYSQL_PASSWORD}@tcp(${MYSQL_HOST}:${MYSQL_PORT})/${MYSQL_DATABASE}?parseTime=true" ${DIRECTION}
        ;;
    esac
    ;;
  "seed")
    if [[ "$ENV_SEED" != "" ]]; then
      echo goose -table "goose_seed_migrations" -allow-missing -dir ${ENV_SEED} mysql "${MYSQL_USER}:${MYSQL_PASSWORD}@tcp(${MYSQL_HOST}:${MYSQL_PORT})/${MYSQL_DATABASE}?parseTime=true" up
      goose -table "goose_seed_migrations" -allow-missing -dir ${ENV_SEED} mysql "${MYSQL_USER}:${MYSQL_PASSWORD}@tcp(${MYSQL_HOST}:${MYSQL_PORT})/${MYSQL_DATABASE}?parseTime=true" up
    fi
    ;;
  "drop")
    echo goose -dir ${SOURCE} mysql "${MYSQL_USER}:${MYSQL_PASSWORD}@tcp(${MYSQL_HOST}:${MYSQL_PORT})/${MYSQL_DATABASE}?parseTime=true" reset
    goose -dir ${SOURCE} mysql "${MYSQL_USER}:${MYSQL_PASSWORD}@tcp(${MYSQL_HOST}:${MYSQL_PORT})/${MYSQL_DATABASE}?parseTime=true" reset
  ;;
esac