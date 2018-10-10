require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)



module Paratodos
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.2

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
    config.time_zone = 'Brasilia'
    config.i18n.default_locale = "pt-BR"
    config.encoding = "utf-8"

    unless Rails.env.production?
        ## liberando rede
        config.web_console.whitelisted_ips = ['120.0.0.1','10.0.0.0/16']
    end
  end
end
