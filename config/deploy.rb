set :use_sudo,    false
set :git_shallow_clone, 1
set :keep_releases,     5

set :application, "shop"
set :user,        "ibex"
set :password,    "schue69"
set :deploy_to,   "/home/ibex/shop"
set :runner,      "ibex"
set :repository,  "git@github.com:ibexmonj/shop.git"

set :scm, :git
# Or: `accurev`, `bzr`, `cvs`, `darcs`, `git`, `mercurial`, `perforce`, `subversion` or `none`

role :web, "24.91.141.52:80"                          # Your HTTP server, Apache/etc
role :app, "24.91.141.52:80"                          # This may be the same as your `Web` server
role :db,  "24.91.141.52:80", :primary => true # This is where Rails migrations will run


# If you are using Passenger mod_rails uncomment this:
# if you're still using the script/reapear helper you will need
# these http://github.com/rails/irs_process_scripts

# namespace :deploy do
#   task :start do ; end
#   task :stop do ; end
#   task :restart, :roles => :app, :except => { :no_release => true } do
#     run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
#   end
# end
