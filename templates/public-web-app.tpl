PORT={{PUBLIC_APP_PORT}}
PUBLIC_URL={{WEB_CLIENT_URL}}
REACT_APP_DEFAULT_INSTANCE={{APP_INSTANCE}}
REACT_APP_API_BASE_URL={{PUBLIC_API_URL}}
REACT_APP_DEFAULT_LANGUAGE={{PUBLIC_APP_LANGUAGE}}
REACT_APP_FALLBACK_LANGUAGE={{PUBLIC_APP_LANGUAGE}}
REACT_APP_CONTENT_URL="{{PUBLIC_APP_CONTENT_URL}}"
REACT_APP_USE_RECAPTCHA={{PUBLIC_USE_RECAPTCHA}}
REACT_APP_RECAPTCHA_SITEKEY={{PUBLIC_RECAPTCHA_SITEKEY}}
REACT_APP_TITLE={{PUBLIC_APP_TITLE}}
REACT_APP_DESCRIPTION="{{PUBLIC_APP_DESCRIPTION}}"

REACT_APP_CSP_DEFAULT_SRC="'self'"
REACT_APP_CSP_MEDIA_SRC="'self' {{PUBLIC_CSP_MEDIA_SRC}}"
REACT_APP_CSP_IMG_SRC="'self' data: https:"

REACT_APP_CSP_STYLE_SRC="'unsafe-inline' 'self' https://www.gstatic.com/recaptcha/ https://www.google.com/recaptcha/ "
REACT_APP_CSP_SCRIPT_SRC="'unsafe-inline' https://www.gstatic.com/recaptcha/ https://www.google.com/recaptcha/ 'self' 'unsafe-eval'"
REACT_APP_CSP_FRAME_SRC="https://www.google.com/recaptcha/ https://recaptcha.google.com/recaptcha"
REACT_APP_CSP_CHILD_SRC="https://www.google.com/"
REACT_APP_CSP_CONNECT_URLS="{{PUBLIC_CSP_CONNECT_URLS}} https://www.google.com/recaptcha/ https://www.google.com/ http://www.w3.org/2000/svg"
