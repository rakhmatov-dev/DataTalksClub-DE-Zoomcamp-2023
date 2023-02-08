Question 1. Load January 2020 data
Answer: rows: 447770

Question 2. Scheduling with Cron
to run on the first of every month at 5am UTC
<Min><Hour><Day of the month><Month><Day of the week>
Answer: 0 5 1 * *

Question 3. Loading data to BigQuery
Make sure you have the parquet data files for Yellow taxi data for Feb. 2019 and March 2019 loaded in GCS. Run your deployment to append this data to your BiqQuery table. How many rows did your flow code process?

prefect deployment build etl_gcs_to_bq.py:etl_gcs_to_bq -n "From GCS to Big Query"
prefect deployment apply etl_gcs_to_bq-deployment.yaml

Answer: Total number of rows processed: 14851920

Question 4. Github Storage Block
Run your deployment in a local subprocess (the default if you don’t specify an infrastructure). Use the Green taxi data for the month of November 2020.

How many rows were processed by the script?

prefect deployment build -sb github/github-block etl_web_to_gcs.py:etl_web_to_gcs -n "From Web To GCS (GutHub)"
prefect deployment apply etl_web_to_gcs-deployment.yaml

Answer: rows: 88605

Question 5. Email or Slack notifications

Answer: rows: 514392

Question 6. Secrets

Answer: 8 (********)