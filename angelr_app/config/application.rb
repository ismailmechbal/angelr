require_relative 'boot'

require 'rails/all'

Bundler.require(*Rails.groups)

module AngelrApp
  class Application < Rails::Application
    config.generators do |g|
      g.template_engine nil #to skip views
      g.test_framework  nil #to skip test framework
      g.assets  false
      g.helper false
      g.stylesheets false
    end
  end
end
