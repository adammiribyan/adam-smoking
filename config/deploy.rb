set :user, "adam"

set :application, "adam-smoking"

role :app, "smoking.adammiribyan.com"
role :web, "smoking.adammiribyan.com"
role :db,  "smoking.adammiribyan.com", :primary => true

set :scm, "git"
set :repository,  "git@github.com:adammiribyan/adam-smoking.git"
set :deploy_via, :remote_cache

ssh_options[:forward_agent] = true
default_run_options[:pty] = true

set :keep_releases, 5
set :use_sudo, false

set :branch, "master"
set :deploy_to, "/home/#{user}/webapps/#{application}"

namespace :deploy do
  desc "Restart application"
  task :restart, :roles => :app do
    run "touch #{current_path}/tmp/restart.txt"
  end
end