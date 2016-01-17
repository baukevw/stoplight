set :stage, :test
server '86.89.195.125:22', user: 'deploy', roles: %w{web app db}
set :deploy_to, "/home/deploy/rails/stoplight/master"
set :rails_env, 'production'
set :branch, 'master'
