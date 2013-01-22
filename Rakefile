#!/usr/bin/env rake
# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require File.expand_path('../config/application', __FILE__)

Skeleton::Application.load_tasks

Dir[File.expand_path("../app/tasks/**/*.{rake,rb}", __FILE__)].each do |file|
  load file
end
