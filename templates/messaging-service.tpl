#GLOBAL_DB_CONNECTION_STR=<mongodb-atlas-or-other-server-e.g.xxxx.mongodb.net/test?retryWrites=true&w=majority>
#GLOBAL_DB_CONNECTION_PREFIX=<emtpy or +srv if atlas>
# should be secret:
#GLOBAL_DB_USERNAME=<db-username>
#GLOBAL_DB_PASSWORD=<db-password>

MESSAGE_DB_CONNECTION_STR="{{DEV_DB_HOST}}/{{DEV_DB_AUTHDB}}?retryWrites=true"
MESSAGE_DB_CONNECTION_PREFIX=

# should be secret:
MESSAGE_DB_USERNAME={{DEV_DB_USER}}
MESSAGE_DB_PASSWORD={{DEV_DB_PASSWORD}}

