require_relative 'boot'

require 'rails/all'

Bundler.require(*Rails.groups)

module YourApp
  class Application < Rails::Application
    config.load_defaults 6.1

    config.hosts << "rails-longest-word-game-15aca0ae87c1.herokuapp.com"

    config.middleware.insert_before 0, Rack::Cors do
      allow do
        origins '*'
        resource '*', headers: :any, methods: [:get, :post, :put, :delete, :options]
      end
    end
  end
end
