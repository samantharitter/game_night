OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, 674214389300493, "a3d8ba9ec066286ecb3d53eb3f8b6bda"
end
