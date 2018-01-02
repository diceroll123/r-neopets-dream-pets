require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module RNeopetsDreamPets
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.1

    # In all environments, including production, we're still just using the
    # simple async job queue. At time of writing, our only job is the
    # PostToDiscordJob, which is super non-essential, so it's totally okay to
    # drop jobs if something goes wrong.
    config.active_job.queue_adapter = :async

    config.x.user_maximum_pet_requests = 10
  end
end
