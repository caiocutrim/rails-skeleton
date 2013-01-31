require "bundler"
Bundler.setup(:default, :test)

require "active_record"

require "rspec/matchers"
require "rspec/rails/extensions/active_record/base"
require "rspec/rails/matchers/have_extension"

require "support/matchers/allow"

require "factory_girl"
require "factory_girl/preload"
require "factory_girl/preload/rspec2"

connection_info = YAML.load_file("config/database.yml")["test"]
ActiveRecord::Base.establish_connection(connection_info)
ActiveRecord::Base.whitelist_attributes = true
