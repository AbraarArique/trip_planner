**Trip Planner**
Trip Planner is a travel planning and note keeping app built using Ruby on Rails. It's core features are the following:

  - Create "Days" for each day in your trip
  - Associate one or more "Plans" to that day
  - A "Plan" can have one "Place"
  - The "Place" is automatically shown on the "Plan" details page using Google Maps JavaScript API
  - The Location of "Place" uses Google Maps Autocomplete API
  - The human-readable Location is automatically converted into Latitude/Longitude values using the Google Maps Geocoding API
  - Google Maps also enables 360 degree Street View
  - Supports creating, editing and deleting of "Days", "Plans" and "Places"

---

This app is built using:

  - Ruby 2.2.3 (managed by rbenv)
  - Ruby on Rails 4.2.1
  - MySQL
  - Haml
  - Sass
  - CoffeeScript
  - jQuery
  - Foundation
  - Passenger (with Apache)
  - RSpec, Capybara and FactoryGirl for testing
  - Capistrano for deployment
  - Git for version control
  - Icons from Font Awesome

---

**Installation Instructions:**

  - Make sure you have Ruby and Ruby on Rails installed
  - Clone this repository into your local machine:
    ```
    $ git clone https://github.com/AbraarAriquePro/trip_planner.git
    ```
  - Then change to the directory you just cloned:
    ```
    $ cd trip_planner
    ```
  - Install all the Gems and their dependencies
    ```
    $ bundle install --without development test --deployment
    ```
  - Add a `database.yml` and `secrets.yml` inside the `config/` directory:
    ```
    $ touch config/database.yml
    $ touch config/secrets.yml
    ```
  - Edit `database.yml` and add the following MySQL configuration:
    ```
    default: &default
      adapter: mysql2
      encoding: utf8
      pool: 5
      socket: /var/run/mysqld/mysqld.sock

    production:
      <<: *default
      database: trip_planner_production
      username: example_user // add your MySQL username here (it's best not to use root)
      password: password123 // add your MySQL password here
    ```
  - Edit `secrets.yml` and add the following:
    ```
    production:
      secret_key_base: // run 'rake secret' in the command line and paste the value here
    ```
  - Setup and migrate the database:
    ```
    $ rake db:setup RAILS_ENV=production
    ```
  - Precompile the assets:
    ```
    $ rake assets:precompile RAILS_ENV=production
    ```
  - Finally, fire up the WEBrick server in production:
    ```
    $ rails server -e production
    ```
Then visit `http://localhost:3000/` in your browser and you'll see the app up and running.

---

**Contributing:**
This app is open for community contributions. Please follow the rules bellow to contribute:

  - Fork this project
  - Clone the forked project into your local machine
  - Create a new branch, give it a name that reflects the feature you're working on
  - Do work and commit the changes
  - Push the changes up to your forked repository
  - Open a Pull Request from the master branch