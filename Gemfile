source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '3.0.3'
# Use Puma as the app server
# gem 'puma', '~> 3.0'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '= 1.5.3'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Use Rack CORS for handling Cross-Origin Resource Sharing (CORS), making cross-origin AJAX possible
gem 'rack-cors'
gem 'mongoid'
gem 'rake', '~> 10.5.0'
gem 'i18n', '~> 0.6.11'
# prior to ruby 1.9.2, ruby doesn't have json gem by default https://github.com/intridea/multi_json. This is needed for multijson
gem 'json', '=1.8.3'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'factory_girl_rails', '= 1.1.0'
  gem 'rspec-rails', '~> 3.4'
  gem 'faker', '=0.3.1'
  gem 'rspec-its'
  gem 'rspec_json_schema_matcher', :git => 'https://github.com/orangeeli/rspec_json_schema_matcher', :branch => 'because-ruby-1.8.7-not-quite-dead-yet'
end
