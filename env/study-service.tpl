STUDY_DB_CONNECTION_STR="{{DEV_DB_HOST}}/{{DEV_DB_AUTHDB}}?retryWrites=true&w=majority"
STUDY_DB_CONNECTION_PREFIX=

# should be secret:
STUDY_DB_USERNAME={{DEV_DB_USER}}
STUDY_DB_PASSWORD={{DEV_DB_PASSWORD}}

# 
STUDY_TIMER_EVENT_FREQUENCY=2
STUDY_TIMER_EVENT_CHECK_INTERVAL_MIN=2
STUDY_TIMER_EVENT_CHECK_INTERVAL_VAR=1

# should be secret:
STUDY_GLOBAL_SECRET="{{STUDY_GLOBAL_SECRET}}"

