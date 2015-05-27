# config valid only for current version of Capistrano
lock '3.1.0'

set :application, 'rails_server'
set :repo_url, 'git@github.com:nurhadimaulana/rails_server.git'

set :user, 'nurhadi'
set :use_sudo, false

set :deploy_via, :remote_cache
set :deploy_to, '/home/nurhadi/Application/rails_server'

set :linked_files, %w{env Procfile config/database.yml config/puma.rb}
set :linked_dirs, %w{log tmp/cache tmp/sockets tmp/pids public/uploads}

set :ssh_options, { forward_agent: true, auth_methods: %w(publickey) }

# after 'deploy:finished', 'foreman:restart'

#
# Custom Library deploy
#
# desc "tail rails logs"
# task :logs do
#   on roles(:app) do
#     execute "tail -f #{shared_path}/log/#{fetch(:rails_env)}.log"
#   end
# end

# desc 'Runs rake db:seed'
# task seed: fetch(:rails_env) do
#   on primary fetch(:migration_role) do
#     within release_path do
#       with rails_env: fetch(:rails_env) do
#         execute :rake, "db:seed"
#       end
#     end
#   end
# end