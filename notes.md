When preforming migrations, knex will run them in batches. migrate:latest will run any migrations file that haven't run yet in a single batch.
migrate:rollback will rollback changes done PER migration, which my include multiple batches.

To make a migration file:
\$ npx knex migrate:make <name>

To run all migration files to the most recent:
\$ npx knex migrate:latest

To make a seed file:
\$ npx knex seed:make <name>

To run the seed file:
\$ npx knex seed:run
