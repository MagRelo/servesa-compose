# this will be run when the container starts with nothing in /data
#!/usr/bin/env bash

echo 'Creating application user and db'

mongo ${APP_MONGO_DB} \
        --host localhost \
        --port ${MONGO_PORT} \
        -u ${MONGO_ROOT_USERNAME} \
        -p ${MONGO_ROOT_PASSWORD} \
        --authenticationDatabase admin \
        --eval "db.createUser({user: '${APP_MONGO_USER}', pwd: '${APP_MONGO_PASS}', roles:[{role:'dbOwner', db: '${APP_MONGO_DB}'}]});"

echo 'Application user and db: created'
