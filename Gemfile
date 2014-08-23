source 'https://rubygems.org'
ruby '1.9.3'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.1.5'
gem 'pg'

# Used for the Admin console
gem 'activeadmin', github: 'gregbell/active_admin'

# Used for site delivery
gem 'bootstrap-sass'
gem 'twitter-bootstrap-rails'
gem 'jquery-rails'
gem 'rest-client'

# Turbolinks makes following links in your web application faster. 
# Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.0.1'

# To use ActiveModel has_secure_password
gem 'bcrypt-ruby', '~> 3.0.0'

# Use unicorn as the app server
gem 'unicorn'
gem 'rack-handlers'

# Use Devise authentication, https://github.com/plataformatec/devise
gem 'devise'

# Rename your application, Rails 4.0.x https://github.com/morshedalam/rename
gem 'rename'

# CAS Auth, https://gist.github.com/baygross/2054898
# gem 'rubycas-client-rails'
gem 'net-ldap'
gem 'rubycas-client', git: 'https://github.com/rubycas/rubycas-client'

# gem 'capistrano', group: :development   # Deploy with Capistrano
# gem 'debugger'                          # similar to ruby-debug
# gem 'taps'                              # transfer data to/from a remote db.
# gem 'service_now'       # used for calling https://www.servicenow.com/
# gem 'strong_parameters' # solution to mass-assign problem

group :development, :test do
  gem 'rspec-rails'
  gem 'factory_girl_rails'
  gem 'annotate' # https://github.com/ctran/annotate_models add info headers
  gem 'faker'
  gem 'shoulda-matchers' # https://github.com/thoughtbot/shoulda-matchers
  gem 'capybara'   # for rspec feature tests
  gem 'foreman'    # for local config env variables and Heroku
  #gem 'better_errors' # https://github.com/charliesome/better_errors (Ruby 2.0)
end

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 4.0.0'
  gem 'coffee-rails', '~> 4.0.0.beta1'
  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', platforms: :ruby
  gem 'jquery-ui-rails'
  gem 'uglifier', '>= 1.0.3'
end

group :production do
  gem 'rails_12factor'
  gem 'rails_log_stdout',           github: 'heroku/rails_log_stdout'
  gem 'rails3_serve_static_assets', github: 'heroku/rails3_serve_static_assets'
end
