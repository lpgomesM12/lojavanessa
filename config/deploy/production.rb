set :stage, :production
server '162.243.31.186', user: 'deploy', roles: %w{web app db}
