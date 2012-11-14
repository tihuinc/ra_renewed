role :web, "50.56.113.102"            # Your HTTP server, Apache/etc
role :app, "50.56.113.102"            # This may be the same as your `Web` server
role :db,  "50.56.113.102", :primary => true # This is where Rails migrations will run

set :rails_env, "staging"
set :user, "ubuntu"
set :password, "pass4Qual"
