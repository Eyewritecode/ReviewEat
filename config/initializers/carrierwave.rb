CarrierWave.configure do |config|
  config.fog_credentials = {

    provider:'Google',                        # required
    google_storage_access_key_id: ENV["google_storage_access_key_id"],                        # required (refers to the figaro key in app.yaml)
    google_storage_secret_access_key: ENV["google_storage_secret_access_key"]                      # required
    
  }
  config.fog_directory  = ENV["fog_directory"]
end