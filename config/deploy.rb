# config valid for current version and patch releases of Capistrano
lock "~> 3.11.0"

role :app, ""

set :use_sudo, false
set :application, "paratodos"
set :repo_url, "https://github.com/wagnerrose/paratodos.git"
set :repository, "."

set :rbenv_prefix, "RBENV_ROOT=#{fetch(:rbenv_path)} RBENV_VERSION=#{fetch(:rbenv_ruby)} #{fetch(:rbenv_path)}/bin/rbenv exec"
set :rbenv_map_bins, %w{rake gem bundle ruby rails}
set :rbenv_roles, :all # default value

#incluido para teste
set :default_env, {
  'PATH' => "$HOME/.rbenv/shims:$HOME/.rbenv/bin:$PATH"
}
#######


set :deploy_to, "/var/www/html/paratodos"
set :deploy_via, :copy

# Default value for :linked_files is []
append :linked_files, "config/database.yml", "config/master.key"

# Default value for linked_dirs is []
append :linked_dirs, "log", "tmp/pids", "tmp/cache", "tmp/sockets", "public/system"

#set :local_user, "www-data"

# set passenger variable
set :passenger_environment_variables, { :path => '/home/wagner/.rbenv/shims/passenger:$PATH' }
#### incluido para teste erro pessenger
set :passenger_restart_with_touch, false
####
set :passenger_restart_command, '/home/wagner/.rbenv/shims/passenger-config'



# If you are using Passenger mod_rails uncomment this:
namespace :deploy do
  desc "Fazendo o Deploy local do sistema paratodos"
  task :start do ; end
  task :stop do ; end
  task :restart do
  end
end
