if Rails.env.production?
  CarrierWave.configure do |config|
    config.fog_credentials = {
      # Configuration for Amazon S3
      :provider              => 'AWS',
      :aws_access_key_id     => ENV['AKIAJ6LUJYVS7B746QRQ'],
      :aws_secret_access_key => ENV['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']
    }
    config.fog_directory     =  ENV['vegangrocery']
  end
end