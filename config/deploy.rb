# config valid for current version and patch releases of Capistrano
lock "~> 3.11.0"

role :app, ""

set :application, "paratodos"
set :repo_url, "https://github.com/wagnerrose/paratodos.git"

set :rbenv_prefix, "RBENV_ROOT=#{fetch(:rbenv_path)} RBENV_VERSION=#{fetch(:rbenv_ruby)} #{fetch(:rbenv_path)}/bin/rbenv exec"
set :rbenv_map_bins, %w{rake gem bundle ruby rails}
set :rbenv_roles, :all # default value


set :deploy_to, "/var/www/html/paratodos"
#set :tests, ['']
set :deploy_via, :copy

# Default value for :linked_files is []
append :linked_files, "config/database.yml", "config/master.key"

# Default value for linked_dirs is []
append :linked_dirs, "log", "tmp/pids", "tmp/cache", "tmp/sockets", "public/system"

set :local_user, "wagnerrose"
set :use_sudo, false

# If you are using Passenger mod_rails uncomment this:
namespace :deploy do
  task :start do ; end
  task :stop do ; end
  task :restart do
  end
end
