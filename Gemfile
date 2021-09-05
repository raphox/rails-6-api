source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.0.2'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails', branch: 'main'
gem 'rails', '~> 6.1.4', '>= 6.1.4.1'
# Use postgresql as the database for Active Record
gem 'pg', '~> 1.1'
# Use Puma as the app server
gem 'puma', '~> 5.0'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
# gem 'jbuilder', '~> 2.7'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use Active Model has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Active Storage variant
# gem 'image_processing', '~> 1.2'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.4.4', require: false

# Use Rack CORS for handling Cross-Origin Resource Sharing (CORS), making cross-origin AJAX possible
gem 'rack-cors'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  # Testing framework to Ruby on Rails as a drop-in alternative to its default testing framework, Minitest
  gem 'rspec-rails'
  gem 'rswag-specs'
  # Shoulda Matchers provides RSpec- and Minitest-compatible one-liners to test common Rails functionality
  gem 'shoulda-matchers', '~> 4.0'
  # Use Factory Bot to create objects dynamically
  gem 'factory_bot_rails'
  # Ruby library that pretty prints Ruby objects in full color exposing
  gem 'awesome_print'
  # RuboCop is a Ruby static code analyzer
  gem 'rubocop', require: false
  # This gem is a port of Perl's Data::Faker library that generates fake data
  gem 'faker'
end

group :development do
  gem 'listen', '~> 3.3'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
# ActiveModelSerializers brings convention over configuration to your JSON generation.
gem 'active_model_serializers', '~> 0.10.0'
# Rswag extends rspec-rails "request specs" with a Swagger-based DSL for describing and testing API operations.
gem 'rswag-api'
gem 'rswag-ui'
