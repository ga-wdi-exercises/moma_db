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

```
$ psql -d moma_db < db/schema.sql
$ psql -d moma_db < db/seeds.sql
```
