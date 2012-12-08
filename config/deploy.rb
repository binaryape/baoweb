deployment_user = ENV['DEPUSER']
raise "No DEPUSER!" unless deployment_user

set :application, "bao_website"
set :deploy_to, "/srv/www/vhosts/bao"
set :deploy_via, :copy
set :repository, "htdocs" 
set :scm, :none 
set :copy_compression, :gzip
set :use_sudo, false
set :keep_releases, 2

set :user, deployment_user

role :web, 'binary-ape.org'