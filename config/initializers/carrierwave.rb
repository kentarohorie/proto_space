  CarrierWave.configure do |config|
    config.fog_credentials = {
      :provider               => 'AWS',
      :aws_access_key_id      => 'AKIAJU4BS2SMB5X5427AA',
      :aws_secret_access_key  => 'arM1Mghfb4buMqKuMlU9D4intks2gr/7Eaj7wEe8',
      :region                 => 'ap-northeast-1'
    }

    # config.fog_directory = 'your_backet' if Rails.env.production?
    config.fog_directory = 'kentaroprotospace' #if Rails.env.development?

  end