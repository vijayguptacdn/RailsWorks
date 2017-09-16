OmniAuth.config.logger = Rails.logger


Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '1942256712716340', '8d9b8bdb19e3e5307f3bdba351024fff'
end