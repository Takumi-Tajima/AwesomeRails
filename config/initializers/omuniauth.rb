Rails.application.config.middleware.use OmniAuth::Builder do
  if Rails.env.local?
    provider :github, 'Ov23ct6rduuKRTVF2E4w', '7ff7d89cca31e5d37d031af3b544784825bfcb98'
  end
end
