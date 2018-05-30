module CarrierWave
  module MiniMagick
    def quality(percentage)
      manipulate! do |img|
        img.quality(percentage.to_s)
        img = yield(img) if block_given?
        img
      end
    end
  end
end

CarrierWave.configure do |config|
  config.fog_provider = 'fog/google'                        # required
  config.fog_credentials = {
    provider:                         'Google',
    google_storage_access_key_id:     'GOOGBWAG33SL54T4IQFE4ZBO',
    google_storage_secret_access_key: 'DW7tNoOsM/dYZQD81baPiteOAl6kJw2Qk4v7hcZB'
  }
  config.fog_directory = 'trainees'
end