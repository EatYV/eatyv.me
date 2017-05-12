CarrierWave.configure do |config|
  config.storage = :fog
  config.fog_directory = 'eatyv'

  config.fog_credentials = {
    :provider => 'AWS',
    :aws_access_key_id => 'AKIAI3SDNEXQDRXHZ5OQ',
    :aws_secret_access_key => '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',
  }
end