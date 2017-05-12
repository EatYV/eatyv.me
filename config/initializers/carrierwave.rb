CarrierWave.configure do |config|
  config.fog_provider = 'fog/aws'
  config.fog_directory = 'eatyv'

  config.fog_credentials = {
    :provider => 'AWS',
    :aws_access_key_id => 'AKIAI3SDNEXQDRXHZ5OQ',
    :aws_secret_access_key => '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',
    :region => 'EU'
  }
end