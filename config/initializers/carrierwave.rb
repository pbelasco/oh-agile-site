CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider               => 'AWS',       # required
    :aws_access_key_id      => 'AKIAIDKW4H3R4H5QTRNQ',       # required
    :aws_secret_access_key  => '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',       # required
    :region                 => 'sa-east-1'  # optional, defaults to 'us-east-1'
  }
  config.fog_directory  = 'oh-site'                     # required
  config.fog_host       = 'https://s3-sa-east-1.amazonaws.com/oh-site'            # optional, defaults to nil
  config.fog_public     = true                                   # optional, defaults to true
  config.fog_attributes = {'Cache-Control'=>'max-age=315576000'}  # optional, defaults to {}
end