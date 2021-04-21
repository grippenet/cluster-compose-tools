LOG_DB_CONNECTION_STR="{{DEV_DB_HOST}}/{{DEV_DB_AUTHDB}}?retryWrites=true"
LOG_DB_CONNECTION_PREFIX=

# should be secret:
LOG_DB_USERNAME={{DEV_DB_USER}}
LOG_DB_PASSWORD={{DEV_DB_PASSWORD}}

#################
# grpc services
#################
# In common conf
# LOGGING_SERVICE_LISTEN_PORT=5006