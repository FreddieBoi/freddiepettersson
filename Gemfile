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
gem 'sass'
gem 'sass-rails', '~> 3.1.5'

gem 'jquery-rails'

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# Use unicorn as the web server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

gem 'inherited_resources', '>= 1.2.2'
gem 'has_scope'
gem 'friendly_id', '~> 4.0.0'
gem 'meta_search', '>= 1.1.0.pre'
gem 'kaminari'
gem 'formtastic', '<= 1.2.4'
gem 'activeadmin', '>= 0.3.4'
gem 'tweet-button'
gem 'disqus', '>= 1.0.4'

group :development do
  gem 'annotate', '2.4.1.beta1'
  # To use debugger
  gem 'ruby-debug19', :require => 'ruby-debug'
end

group :test do
# Pretty printed test output
  gem 'turn', '0.8.2', :require => false
end
