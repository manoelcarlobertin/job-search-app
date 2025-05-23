require_relative "boot"

require "rails"
# Pick the frameworks you want:
require "active_model/railtie"
require "active_job/railtie"
require "active_record/railtie"
require "active_storage/engine"
require "action_controller/railtie"
require "action_mailer/railtie"
require "action_mailbox/engine"
require "action_text/engine"
require "action_view/railtie"
require "action_cable/engine"
# require "rails/test_unit/railtie"

Bundler.require(*Rails.groups)

module JobSearch
  class Application < Rails::Application
    config.to_prepare do
      Devise::RegistrationsController.layout "application"
    end
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 8.0

    config.autoload_lib(ignore: %w[assets tasks])

    # config.eager_load_paths << Rails.root.join("extras")

    config.generators.system_tests = nil
  end
end
