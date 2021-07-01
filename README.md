# Sinatra Starter

Just a sinatra boiler plate of my own with

- sinatra
- bin scripts
- rails like config/app setup so it is familiar
- easy module handling
- active model

I dont recommend you use this because I only use it for the worse things

## What to do

- Install Deps: `bin/setup`
- Start the server: `bin/server`
- Run a console: `bin/rake console`
- Run the tests: `bin/rake spec`

## Generate a model

- Generate the migration `$ bundle exec rake db:create_migration NAME=create_users`
- Define the migration
```ruby
class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
    end
  end
end
```
- migrate `bundle exec rake db:migrate`
- Add model file to `app/models/`
```ruby
# app/models/user.rb
class User < ActiveRecord::Base
  validates_presence_of :name
end
```
