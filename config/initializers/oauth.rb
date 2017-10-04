Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '1778167635845888', '3cf2e5805f0205aaa8176f70ee64e4a9',
  scope: 'public_profile, email',
  info_fields: 'email, first_name, name',
  image_size: :large,
  auth_type: 'rerequest'

  configure do |config|
    config.path_prefix = '/users/auth'
  end

  on_failure do |env|
    if env['omniauth.params'].present?
      env["devise.mapping"] = Devise.mappings[:user]
    end
    Devise::OmniauthCallbacksController.action(:failure).call(env)
  end
end
