source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end



# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.1.6'
# Use postgresql as the database for Active Record
gem 'pg', '>= 0.18', '< 2.0'
# Use Puma as the app server
gem 'puma', '~> 3.7'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby
gem 'devise'
#instalando jquery
gem 'jquery-rails'

# Help ActiveRecord::Enum feature to work fine with I18n and simple_form. 
gem 'enum_help'
source 'https://rails-assets.org' do
  # Bootstrap
  gem 'rails-assets-bootstrap', '3.3.7'
  # NotifyJS
  gem 'rails-assets-notifyjs'
  # BootboxJS
  gem 'rails-assets-bootbox'
  # Icons
  gem 'rails-assets-glyphicons'
end

# https://github.com/nicolas-besnard/adminlte2-rails
gem 'adminlte2-rails'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Classier solution for file uploads for Rails, Sinatra and other Ruby web frameworks 
gem 'carrierwave', '~> 1.0'

# Mini_magick
gem "mini_magick"

#Integration of RubyMoney - Money with Rails
gem 'money-rails', '~>1'
# jQuery UI 
gem 'jquery-ui-rails'
# A Scope & Engine based, clean, powerful, customizable and sophisticated paginator for Ruby webapps
gem 'kaminari'
# Repository for collecting Locale data for Ruby on Rails I18n as well as other interesting, Rails related I18n stuff
gem 'rails-i18n'


group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '~> 2.13'
  gem 'selenium-webdriver'

end


gem 'faker'

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

