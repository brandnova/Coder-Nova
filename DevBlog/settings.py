import os
from pathlib import Path

# Build paths inside the project like this: BASE_DIR / 'subdir'.
BASE_DIR = Path(__file__).resolve().parent.parent


# Quick-start development settings - unsuitable for production
# See https://docs.djangoproject.com/en/5.0/howto/deployment/checklist/

# SECURITY WARNING: keep the secret key used in production secret!
SECRET_KEY = 'django-insecure-5rxkkuiuv4eotue&7mfd$$k)l+ebey+zq!$v0cu!%)xoh$#=6)'

# SECURITY WARNING: don't run with debug turned on in production!
DEBUG = True

ALLOWED_HOSTS = ['*']


# Application definition

INSTALLED_APPS = [
    'jazzmin',
    'django.contrib.admin',
    'django.contrib.auth',
    'django.contrib.contenttypes',
    'django.contrib.sessions',
    'django.contrib.messages',
    'django.contrib.staticfiles',
    'ckeditor',
    'ckeditor_uploader',
    'django_social_share',
    'core',
    'posts',
    'taggit',
    'accounts.apps.AccountsConfig',
    'newsletter',
    'ads',
    
]

# Session settings
SESSION_ENGINE = 'django.contrib.sessions.backends.db'  # Use database-backed sessions
SESSION_COOKIE_NAME = 'sessionid'  # Cookie name
SESSION_COOKIE_AGE = 1209600  # 2 weeks in seconds (default)
SESSION_SAVE_EVERY_REQUEST = False  # Don't save session data on every request
SESSION_EXPIRE_AT_BROWSER_CLOSE = False  # Session will not expire when the browser is closed

# Authentication settings
AUTHENTICATION_BACKENDS = (
    'django.contrib.auth.backends.ModelBackend',  # Default authentication backend
)

MIDDLEWARE = [
    'django.middleware.security.SecurityMiddleware',
    'whitenoise.middleware.WhiteNoiseMiddleware',
    'django.contrib.sessions.middleware.SessionMiddleware',
    'django.middleware.common.CommonMiddleware',
    'django.middleware.csrf.CsrfViewMiddleware',
    'django.contrib.auth.middleware.AuthenticationMiddleware',
    'django.contrib.messages.middleware.MessageMiddleware',
    'django.middleware.clickjacking.XFrameOptionsMiddleware',
]

ROOT_URLCONF = 'DevBlog.urls'

TEMPLATES = [
    {
        'BACKEND': 'django.template.backends.django.DjangoTemplates',
        'DIRS': [],
        'APP_DIRS': True,
        'OPTIONS': {
            'context_processors': [
                'django.template.context_processors.debug',
                'django.template.context_processors.request',
                'django.contrib.auth.context_processors.auth',
                'django.contrib.messages.context_processors.messages',
                'core.context_processors.site_settings_processor',
                'core.context_processors.static_pages_processor',
                'core.context_processors.ad_context_processor',
            ],
        },
    },
]

WSGI_APPLICATION = 'DevBlog.wsgi.application'


# Database
# https://docs.djangoproject.com/en/5.0/ref/settings/#databases

DATABASES = {
    'default': {
        # 'ENGINE': 'django.db.backends.sqlite3',
        # 'NAME': BASE_DIR / 'db.sqlite3',

        'ENGINE': 'django.db.backends.mysql',
        'NAME': 'codernova',
        'USER': 'codernova',
        'PASSWORD': 'ndKNtRVasYvLt6s.',
        'HOST': 'localhost',
        'PORT': '3306',
    }
}


# Password validation
# https://docs.djangoproject.com/en/5.0/ref/settings/#auth-password-validators

AUTH_PASSWORD_VALIDATORS = [
    {
        'NAME': 'django.contrib.auth.password_validation.UserAttributeSimilarityValidator',
    },
    {
        'NAME': 'django.contrib.auth.password_validation.MinimumLengthValidator',
    },
    {
        'NAME': 'django.contrib.auth.password_validation.CommonPasswordValidator',
    },
    {
        'NAME': 'django.contrib.auth.password_validation.NumericPasswordValidator',
    },
]


# Internationalization
# https://docs.djangoproject.com/en/5.0/topics/i18n/

LANGUAGE_CODE = 'en-us'

TIME_ZONE = 'UTC'

USE_I18N = True

USE_TZ = True


# Static files (CSS, JavaScript, Images)
# https://docs.djangoproject.com/en/5.0/howto/static-files/

MEDIA_URL = '/media/'
MEDIA_ROOT = os.path.join(BASE_DIR, 'media')
STATIC_ROOT = os.path.join(BASE_DIR, 'staticfiles')

STATIC_URL = '/static/'
STATICFILES_DIRS = [
    os.path.join(BASE_DIR, 'static'),
]

# Default primary key field type
# https://docs.djangoproject.com/en/5.0/ref/settings/#default-auto-field

DEFAULT_AUTO_FIELD = 'django.db.models.BigAutoField'

CKEDITOR_UPLOAD_PATH = "media/"
CKEDITOR_CONFIGS = {
    'default': {
        'toolbar': 'full',
        'height': 300,
        'width': '100%',
        'extraPlugins': ','.join([
            'uploadimage',
            'codesnippet',
            # additional plugins
        ]),
    },
}


EMAIL_BACKEND = 'django.core.mail.backends.smtp.EmailBackend'
EMAIL_HOST = 'smtp.gmail.com'
EMAIL_PORT = 587
EMAIL_USE_TLS = True
EMAIL_HOST_USER = 'brandnova89@gmail.com'
EMAIL_HOST_PASSWORD = 'zxgc intt dvax quzy'
DEFAULT_FROM_EMAIL = 'brandnova89@gmail.com'


# Zazzmin settings

JAZZMIN_SETTINGS = {
    # Title of the window (Will default to current_admin_site.site_title if absent or None)
    'site_title': 'Coder Nova',

    # Title on the brand, and the login screen (19 chars max)
    'site_header': 'Coder Nova',

    # Logo to use for your site, must be present in static files, used for login, brand and top menu
    'site_logo': 'assets/imgs/Coder_Nova - Copy.jpeg',

    # CSS classes that are applied to the logo above
    'site_logo_classes': 'img-circle',

    # Welcome text on the login screen
    'welcome_sign': 'Welcome to Coder Nova',

    # Copyright on the footer
    'copyright': 'Coder Nova',

    # The model admin to search from the search bar, search bar omitted if excluded
    'search_model': 'auth.User',

    # Field name on user model that contains avatar image, used for the avatar beside the log out
    'user_avatar': lambda user: user.profile.avatar.url if user.profile.avatar else None,

    # Custom icons for side menu apps/models
    'icons': {
        'auth': 'fas fa-users-cog',
        'auth.user': 'fas fa-user',
        'auth.Group': 'fas fa-users',
    },

    # Default expanded menu
    'default_expanded': True,

    # Custom links to be included in the top menu
    'topmenu_links': [
        {'name': 'Home', 'url': 'admin:index', 'permissions': ['auth.view_user']},
    ],

    # Link to put at the bottom of the sidebar
    'show_ui_builder': False,

}