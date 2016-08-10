CarrierWave.configure do |config|
  config.fog_credentials = {

    provider:'Google',                        # required
    google_storage_access_key_id: 'GOOG3YBMOJIPQQYOFXTT',                        # required
    google_storage_secret_access_key: 'hSJkNFH4B9E9S+l5Cc49eLkBLOvhGXqm4/1rjr7g'                       # required
    
  }
  config.fog_directory  = 'hollakloud.appspot.com/images'                          # required
end