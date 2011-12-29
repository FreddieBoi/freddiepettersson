source 'http://rubygems.org'

gem 'rails', '3.1.3'

# Bundle edge Rails instead:
# gem 'rails',     :git => 'git://github.com/rails/rails.git'

group :development, :test do
  gem 'sqlite3'
end

group :production do
  gem 'pg'
  gem 'thin'
end

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'coffee-rails', '~> 3.1.1'
  gem 'uglifier', '>= 1.0.3'
end
# Doing this outside of assets block to make activeadmin work properly
gem 'sass-rails',   '~> 3.1.5'

gem 'jquery-rails'

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# Use unicorn as the web server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

gem 'friendly_id'
gem 'gravatar_image_tag'
gem "meta_search",    '>= 1.1.0.pre'
gem 'kaminari'
gem 'activeadmin'
gem 'tweet-button'
gem 'client_side_validations'
gem 'disqus'

group :development do
# To use debugger
  gem 'ruby-debug19', :require => 'ruby-debug'
end

group :test do
# Pretty printed test output
  gem 'turn', '0.8.2', :require => false
end
