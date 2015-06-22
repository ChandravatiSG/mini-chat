Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, '3lSngOFcpQrrkhJUrp4ovka2P', 'yLKtyTGXdjc7Gzr7ineXuRKM561hTjX2Ou2vCBPIo0CTkv7die', image_size: 'normal'
end