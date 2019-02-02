# KeepMeFiit - NextGenFitnessApp [![Codeship Status for rajgurung/blog](https://app.codeship.com/projects/ad73a930-cb69-0134-0ef4-56c43863b4c3/status?branch=master)](https://app.codeship.com/projects/199882) [![StackShare](https://img.shields.io/badge/tech-stack-0690fa.svg?style=flat)](https://stackshare.io/rajgurung/keepmefiit)

https://rajgurung.github.io/keepmefiit.com/

- Dashboard
- Thrid Party API integration
- Omniauth
- Connection
- E-commerce
- Online Magazine/subscription basis

![Alt Text](https://github.com/rajgurung/blog/blob/master/app/assets/images/Screen%20Shot%202017-02-07%20at%2013.17.51.png?raw=true)

# Postgres Installation & Schema load
- https://www.codementor.io/engineerapart/getting-started-with-postgresql-on-mac-osx-are8jcopb

Step 1: If you have homebrew already. Skip to 2.
```
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

Step 2: Install Postgresql with brew 
```
brew install postgresql
```


Step 3: make sure Postgres starts every time your computer starts up. Execute the following command:
```
pg_ctl -D /usr/local/var/postgres start && brew services start postgresql
```


Step 4: make sure Postgres is installed and running. Let’s check what version is running:
```
Postgres -v
```


###Your PG db is set up. Onto the next step to create Role.


Step 1: open postgres, this will open up Postgres terminal
```
psql postgres
```

Step 2: create role
```
CREATE ROLE keepmefiit WITH LOGIN PASSWORD ‘generate your password form rails console => SecureRandom.uuid’;
```

Step 3: give permission to create db
```
ALTER ROLE keepmefiit CREATEDB;
```


Step 4: check attributes, you should see ‘Create DB’ next to your Role name
```
\du
```


Step 5: quit from terminal
```
\q 
```

Step 6: login from terminal using keepmefiit
```
psql postgres -U keepmefiit
```

Step 7: create database
```
CREATE DATABASE keepmefiit;
```

Step 8: Once this is done, you need to add at least one user who has permission to access the database (aside from the super users, who can access everything)

```
GRANT ALL PRIVILEGES ON DATABASE keepmefiit TO keepmefiit;
```

Step 9: list all pg database
```
\list
```


Step 10: connect to specific database

```
\connect keepmefiit
```


Step 11: to quit from psql terminal
```
\q
``` 

###Ok that it we are ready to setup our db.

Step 12: In your project root, run below.
```
bundle exec rake db:setup
```
