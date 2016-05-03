# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require File.expand_path('../config/application', __FILE__)

# Resque tasks
require 'resque/tasks'

namespace :resque do
  task :setup => :environment do
    require 'resque'

    # you probably already have this somewhere
    Resque.redis = 'localhost:6379'
  end
end

Rails.application.load_tasks
