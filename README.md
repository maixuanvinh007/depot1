Prerequisites

The setups steps expect following tools installed on the system.

    Github
    Ruby 2.7.0
    Rails 6.0.2.2

1. Check out the repository

git clone https://github.com/maixuanvinh007/depot1.git


2. Create and setup the database

Run the following commands to create and setup the database.

    cd depot1
    yarn install --check-files
    rake db:create
    rake db:migrate
    rails db:seed

3. Start the Rails server

You can start the rails server using the command given below.

    bundle install
    rails s

And now you can visit the site with the URL http://localhost:3000