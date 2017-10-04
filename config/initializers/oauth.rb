Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook,
           '1805761499452890',
           'ed36b63980f10ead7ffad462317870de',
           scope: 'email',
           info_fields: 'email',
           auth_type: 'rerequest'

  configure do |config|
    config.path_prefix = '/users/auth'
  end

  on_failure do |env|
    #we need to setup env
    if env['omniauth.params'].present?
      env["devise.mapping"] = Devise.mappings[:user]
    end
    Devise::OmniauthCallbacksController.action(:failure).call(env)
  end

end
