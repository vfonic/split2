# Load the Rails application.
require File.expand_path('../application', __FILE__)

Rails.application.configure do
  config.autoload_paths << "#{Rails.root}/app/filters"
  config.autoload_paths << "#{Rails.root}/app/drops"
end

# Initialize the Rails application.
Rails.application.initialize!
