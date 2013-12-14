# Errbit Config
# =============
#
# Copy this file to config/config.yml and
# modify it accordingly. This file will automatically
# be copied to shared/config on the server when
# `cap deploy:setup` is ran the first time. Be sure
# to place production specific settings there
# You will need to restart the server after changing any settings.

# The host of your errbit server
host: {{ errbit_host }} 

# Enforce SSL connections
enforce_ssl: false

# The email address which email notifications
# will be sent from.
email_from: {{ smtp_user }}

# If you turn on this option, email_at_notices can be
# configured on a per app basis, at the App edit page
per_app_email_at_notices: {{ per_app_notice }}

# Configure when emails are sent for an error.
# [1,3,7] = 1st, 3rd, and 7th occurence triggers
# an email notification.
email_at_notices: [1, 10, 100]

# Configure whether or not the user should be prompted before resolving an error.
confirm_resolve_err: {{ confirm_resolve }}

# Add an optional 'username' field to Users.
# Helpful when you need to plug in a custom authentication strategy, such as LDAP.
user_has_username: false

# Allow comments while an issue tracker is configured.
# This is useful if the err is not critical enough to create a ticket,
# but you want to leave a short comment.
allow_comments_with_issue_tracker: true

# Enable Gravatar.
use_gravatar: true
# Default Gravatar image, can be: mm, identicon, monsterid, wavatar, retro.
gravatar_default: {{ gravatar }}


# Configure SMTP settings. If you are running Errbit on Heroku,
# sendgrid will be configured by default.
# ------------------------------------------------------------------------
smtp_settings:
  :address:              {{ smtp_host }}
  :domain:               {{ smtp_domain }}
  :port:                 "{{ smtp_port }}"
  :authentication:       :plain, :login, :cram_md5
  :enable_starttls_auto: {{ smtp_starttls_auto }}
  :user_name:            {{ smtp_user }}
  :password:             {{ smtp_pass }}



# ALL OF THIS IS TODO:
# GitHub OAuth configuration
# If you want to allow authentication via GitHub, you will need to register
# your app at: https://github.com/settings/applications
# If you hosted Errbit at errbit.example.com, you would fill in:
#
#          URL: http://errbit.example.com/
# Callback URL: http://errbit.example.com/users/auth/github
#
# After you have registered your app, copy your Client ID and Secret key below.
# github_authentication: false
# github_client_id: 'GITHUB_CLIENT_ID'
# github_secret: 'GITHUB_SECRET'
# GitHub Permissions to request from user
#   ['repo']        - Allow creating issues for public and private repos.
#   ['public_repo'] - Only allow creating issues for public repos.
#   []              - No permission to create issues on any repos.
# github_access_scope: ['repo']

