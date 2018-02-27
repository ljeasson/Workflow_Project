OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, '1060565076455-fjkh0rr68ra12a64hbghtvo64e7ef4cq.apps.googleusercontent.com', 'glwWTkFXIHRRquq1uLQQZkUR', {client_options: {ssl: {ca_file: Rails.root.join("cacert.pem").to_s}}}
end
