When preforming migrations, knex will run them in batches. migrate:latest will run any migrations file that haven't run yet in a single batch.
migrate:rollback will rollback changes done PER migration, which my include multiple batches.
