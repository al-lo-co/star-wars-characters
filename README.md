##### Prerequisites

The setups steps expect following tools installed on the system.

- Github
- Ruby [2.5.8]
- Rails [5.2.6]

##### 1. Check out the repository

```bash
git clone https://github.com/al-lo-co/star-wars-characters.git
```

##### 2. Install gems

And you should install the gems.

```ruby
bundle install
```

##### 3. Create and setup the database

Run the following commands to create and setup the database.

```ruby
bundle exec rake db:create
bundle exec rake db:migrate
bundle exec rake upload_data:upload_characters upload_data:upload_films
```

##### 4. Start the Rails server

You can start the rails server using the command given below.

```ruby
bundle exec rails s
```

##### 5. Run specs

You can check the rails tests using the command given below.

```ruby
bundle exec rspec
```