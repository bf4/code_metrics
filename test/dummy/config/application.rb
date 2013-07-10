require File.expand_path('../boot', __FILE__)

# require 'rails/all'
# require "action_controller/railtie"
# require "action_mailer/railtie"
# require "active_model/railtie"
# require "sprockets/railtie"
require 'rails/railtie'
require "rails/test_unit/railtie"

Bundler.setup
require "code_metrics"

module Dummy
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # Set Time.zone default to the specified zone and make Active Record auto-convert to this zone.
    # Run "rake -D time" for a list of tasks for finding time zone names. Default is UTC.
    # config.time_zone = 'Central Time (US & Canada)'

    # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
    # config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
    # config.i18n.default_locale = :de
    config.root = File.expand_path('../../', __FILE__)
    config.secret_key_base = 'b3c631c314c0bbca50c1b2843150fe33'
  end
end
