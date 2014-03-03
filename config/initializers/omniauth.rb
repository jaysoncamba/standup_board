Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, InDinero::FACEBOOK_KEY, InDinero::FACEBOOK_SECRET,
  			:scope => 'email,user_birthday', :display => 'popup'
end