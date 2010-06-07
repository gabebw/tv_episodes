# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_tv_episodes_session',
  :secret      => 'a8bc82c4cd206c743463b1125f17ad456b4f947576d6560367bb6d6cd37fe59673e324b56a5dbee8a9c40ae04d2c374c5dba372bce79f923db45dd8d8d64f535'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
