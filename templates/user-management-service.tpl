##
# User Management 
##

USER_DB_CONNECTION_STR="{{DEV_DB_HOST}}/{{DEV_DB_AUTHDB}}?retryWrites=true"
USER_DB_CONNECTION_PREFIX=

# should be secret:
USER_DB_USERNAME={{DEV_DB_USER}}
USER_DB_PASSWORD={{DEV_DB_PASSWORD}}

#################
# JWT config
#################
TOKEN_EXPIRATION_MIN=5

# should be secret:
JWT_TOKEN_KEY="{{JWT_TOKEN_KEY}}"

#################
# Password Hash
#################
ARGON2_MEMORY=65536
ARGON2_ITERATIONS=4
ARGON2_PARALLELISM=2

# Maximum number of new created accounts, during the signupRateLimitWindow (5 minutes)
NEW_USER_RATE_LIMIT=100

# Delay (seconds) after which to cleanup user account when it has not been verified
CLEAN_UP_UNVERIFIED_USERS_AFTER=129000

# Lifetime in seconds for verification code of a new account. Default is 15 minutes
VERIFICATION_CODE_LIFETIME=900
