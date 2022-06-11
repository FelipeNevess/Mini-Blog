require_relative 'boot'
require 'rails/all'

Bundler.require(*Rails.groups)

module Blog
  class Application < Rails::Application
    config.load_defaults 6.1

    config.i18n.default_locale = 'pt_BR'
    config.time_zone = 'Brasilia'
  end
end
