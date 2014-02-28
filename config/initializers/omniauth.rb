Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, Indinero::FACEBOOK_KEY, Indinero::FACEBOOK_SECRET,
  			:scope => 'email,user_birthday', :display => 'popup'
end