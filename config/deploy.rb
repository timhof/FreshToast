require 'bundler/capistrano'

set :application, "Fresh Toast"
set :repository,  "git@github.com:timhof/FreshToast"
set :domain, 'stateli.com'
set :deploy_to, "/home/timhof/stateli.com"
set :deploy_via, :remote_cache
set :branch, 'master'
set :git_shallow_clone, 1
set :scm_verbose, true
set :use_sudo, false
ssh_options[:port] = 22
ssh_options[:forward_agent] = true
set :host, 'stateli.com'
set :user, 'timhof'
set :group, user

set :scm, :git

role :db,  domain, :primary => true # This is where Rails migrations will run

# if you're still using the script/reaper helper you will need
# these http://github.com/rails/irs_process_scripts

# If you are using Passenger mod_rails uncomment this:
 namespace :deploy do
   task :start do ; end
   task :stop do ; end
   task :restart do
     run "touch #{File.join(current_path,'tmp','restart.txt')}"
   end
 end
