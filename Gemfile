source 'https://rubygems.org'

ruby "2.4.1"

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.0.1'
# Use postgresql as the database for Active Record
# gem 'pg', '~> 0.18'
# Use Puma as the app server
gem 'puma', '~> 3.0'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
# gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Use Rack CORS for handling Cross-Origin Resource Sharing (CORS), making cross-origin AJAX possible
# gem 'rack-cors'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platform: :mri
end

group :development do
  gem 'listen', '~> 3.0.5'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

# must have gems
gem 'pg', '~> 0.19.0'
gem 'active_model_serializers', '~> 0.10.0.rc5'
gem 'authority', '3.1.0'
gem 'rolify', '5.1.0'
gem 'devise'
gem 'prettify', '~> 0.1.0', git: 'https://github.com/rajgng/prettify.git'
gem 'faker', '~> 1.6', '>= 1.6.3'
gem 'rspec-rails', '~> 3.5', '>= 3.5.1'
gem 'figaro'
gem 'carrierwave', '~> 1.0'
gem 'annotate'
gem 'pundit'
gem 'awesome_print', '~> 1.8'

# Rails engines
# gem 'blorgh', path: 'engines/blorgh'
