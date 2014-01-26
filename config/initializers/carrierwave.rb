CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider               => 'AWS',       # required
    :aws_access_key_id      => 'AKIAJO34UEDPXRC752AQ',       # required
    :aws_secret_access_key  => '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',       # required
    #:region                 => 'us-east-1'  # optional, defaults to 'us-east-1'
  }
  config.fog_directory  = 'giveplay_images' # required
  # see https://github.com/jnicklas/carrierwave#using-amazon-s3
  # for more optional configuration
end