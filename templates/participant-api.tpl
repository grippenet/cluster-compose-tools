# listen ports:
DEBUG_MODE=false

# Provided in common
#GATEWAY_LISTEN_PORT=<port>
CORS_ALLOW_ORIGINS={{WEB_CLIENT_URL}}

# clients:
#ADDR_USER_MANAGEMENT_SERVICE=<user-m-addr>:<user-m-port>
#ADDR_STUDY_SERVICE=<study-addr>:<study-port>

USE_DELETE_PARTICIPANT_DATA_ENDPOINT={{USE_DELETE_PARTICIPANT_DATA_ENDPOINT}}
DISABLE_SIGNUP_WITH_EMAIL_ENDPOINT={{DISABLE_SIGNUP_WITH_EMAIL_ENDPOINT}}

USE_RECAPTCHA={{USE_RECAPTCHA}}
RECAPTCHA_SECRET="{{RECAPTCHA_SECRET}}"