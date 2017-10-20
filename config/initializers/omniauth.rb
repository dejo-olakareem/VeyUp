Rails.application.config.middleware.use OmniAuth::Builder do
provider :facebook, ENV['App_ID'], ENV['App_Secret'], "callbackURL": "/auth/facebook/callback/"
end
