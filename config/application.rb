require File.expand_path("../boot", __FILE__)

require "rails"
require "active_record/railtie"
require "action_controller/railtie"
require "action_mailer/railtie"

Bundler.require(:default, Rails.env) if defined?(Bundler)

module Skeleton
  class Application < Rails::Application
    config.autoload_paths += %W[#{config.root}/lib]
    config.time_zone = "Brasilia"
    config.i18n.load_path += Dir[Rails.root.join("app/locales/**/*.yml").to_s]
    config.i18n.default_locale = :"pt-BR"
    config.i18n.available_locales = [:"pt-BR"]
    config.encoding = "utf-8"
    config.filter_parameters += [:password]
    config.assets.enabled = true
    config.generators.assets = false
    config.generators.test_framework :rspec,
        :fixtures => false,
        :view_specs => false
    config.active_record.whitelist_attributes = true
  end
end
