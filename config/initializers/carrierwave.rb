  CarrierWave.configure do |config|
    config.fog_credentials = {
      :provider               => 'AWS',
      :aws_access_key_id      => 'AKIAJGVHQZVEEGYGTXEA',
      :aws_secret_access_key  => 'kJ4e/zh1UJLxkJnMANTnozs/ElMlDaLLZsF4FXVv',
      :region                 => 'ap-northeast-1'
    }

    # config.fog_directory = 'your_backet' if Rails.env.production?
    config.fog_directory = 'kentaroprotospace' #if Rails.env.development?

  end