# MOMA App

## Local set up

Install dependencies that are specified in `Gemfile`

```
$ bundle install
```

Create a new database called moma_db.

```
$ createdb moma_db
```

Migrate a schema to the database.

```
$ psql -d moma_db < db/schema.sql
```

Seed the database using ActiveRecord.

```
$ psql -d moma_db < db/seeds.rb
```

## Troubleshooting

- In SQL commands, use single quotes `''`. Double quotes cause an error.
