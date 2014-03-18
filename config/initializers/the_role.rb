# TheRole.config.param_name => value

TheRole.configure do |config|
  config.layout                     = :application
  config.default_user_role          = :user
  config.access_denied_method       = :access_denied
  config.login_required_method      = :authenticate_user!
  # config.first_user_should_be_admin = false
  # config.destroy_strategy           = :restrict_with_exception # can be nil

end