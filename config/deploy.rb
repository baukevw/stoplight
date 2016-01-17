# config valid only for current version of Capistrano
lock '3.3.5'

set :application, 'stoplight'
set :repo_url, 'git@github.com:baukevw/dcm.git'

# Default value for :linked_files is []
set :rbenv_custom_path, '/home/deploy/.rbenv/'
set :rbenv_ruby, '2.1.2'

namespace :deploy do
  after :restart, :clear_cache do
    on roles(:web), in: :groups, limit: 3, wait: 10 do
      # Here we can do anything such as:
      # within release_path do
      #   execute :rake, 'cache:clear'
      # end
    end
  end
end
