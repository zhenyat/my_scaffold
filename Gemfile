################################################################################
# Generic Gemfile
# Updated according to:
#   - Michael Hartl 3-rd Edition (Listing 11.67)
#   - BKC standards (?)
#   - Heroku
#
#   28.06.2015  ZT
#   04.07.2015  pg_search
#   11.07.2015  acts-as-taggable-on
#   18.07.2015  no gems version selected
#               simple_form with bootstrap
################################################################################
source 'https://rubygems.org'
ruby '2.2.2'

gem 'rails', '4.2.3'                            # Bundle edge Rails instead: gem 'rails', github: 'rails/rails'

gem 'sqlite3'                                   # Use sqlite3 as the database for Active Record
#gem 'sqlite3', groups: [:test, :development]
#gem 'mysql2'                                   # Use mysql as the database for Active Record
#gem 'pg'                                       # Use postgresql as the database for Active Record
#gem 'pg_search'                                # See: https://mkdev.me/posts/kak-delat-full-text-poisk-v-rails-pri-pomoschi-postgresql

gem 'sass-rails'                                # Use SCSS for stylesheets
gem 'uglifier'                                  # Use Uglifier as compressor for JavaScript assets
gem 'coffee-rails'                              # Use CoffeeScript for .coffee assets and views
gem 'therubyracer', platforms: :ruby            # See https://github.com/sstephenson/execjs#readme for more supported runtimes
gem 'jquery-rails'                              # Use jquery as the JavaScript library
gem 'jquery-ui-rails'                           # ?
gem 'turbolinks'                                # Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks

gem 'jbuilder'                                  # Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'sdoc', group: :doc                         # bundle exec rake doc:rails generates the API under doc/api.
gem 'bcrypt'                                    # Use ActiveModel has_secure_password

gem 'haml-rails'                                # https://github.com/indirect/haml-rails

#gem 'devise'                                   # https://github.com/plataformatec/devise
#gem 'pundit'
#gem 'ckeditor'
#gem 'carrierwave'
#gem 'mini_magick'
#gem "acts_as_list"

# gem 'acts-as-taggable-on'                       # https://github.com/mbleigh/acts-as-taggable-on

# MH 3-rd Edition
gem 'faker'
#gem 'fog'
gem 'will_paginate'
gem 'bootstrap-will_paginate'
gem 'bootstrap-sass'

gem 'simple_form'                               # https://github.com/plataformatec/simple_form
gem 'enum_help'

group :development, :test do
  gem 'byebug'                       # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'web-console', '~> 2.0'        # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'spring'                       # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
end

group :test do
  gem 'minitest-reporters'
  gem 'mini_backtrace'
  gem 'guard-minitest'
end

# Heroku
group :production do
  gem 'rails_12factor'
  gem 'puma'
end

# gem 'unicorn'                                 # Use Unicorn as the app server
# gem 'capistrano-rails', group: :development   # Use Capistrano for deployment
