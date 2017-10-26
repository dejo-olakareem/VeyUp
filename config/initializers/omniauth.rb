OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, ENV['App_ID'], ENV['App_Secret'], "callbackURL": "/auth/facebook/callback/"
  provider :google_oauth2, ENV['client_id'], ENV['client_secret']
end
