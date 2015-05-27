set :stage, :staging
set :rails_env, 'staging'

role :app, "128.199.112.33"
role :web, "128.199.112.33"
role :db,  "128.199.112.33", :primary => true

set :server_name, 'http://128.199.112.33/'
set :rvm_ruby_version, '2.1.0'

# http://stackoverflow.com/questions/21036175/how-to-deploy-a-specific-revision-with-capistrano-3
set :branch, 'master'

server 'http://128.199.112.33/', user: 'nurhadi', roles: %w{web app db}