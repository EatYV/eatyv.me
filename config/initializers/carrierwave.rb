if Rails.env.development? or Rails.env.test?
  CarrierWave.configure do |config|
    config.storage = :file
    config.enable_processing = false
  end

else
  CarrierWave.configure do |config|
    config.fog_credentials = {
      :provider               => 'AWS',            # required
      :aws_access_key_id      => 'AKIAI3SDNEXQDRXHZ5OQ',     # required
      :aws_secret_access_key  => 'PGnbdrSWv4gTBZiDbEh2wF9mSaaxWLVBoe',  # required
      :region                 => 'eu-central-1'
    }
    config.fog_use_ssl_for_aws = false
    config.storage             = :fog
    config.fog_directory       = 'images'          # required
  end
end