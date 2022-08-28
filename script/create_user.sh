#!/bin/bash
airflow create_user \
       --username admin \
       --firstname Airflow \
       --lastname Admin \
       --email airflowadmin@example.com \
       --role Admin \
       --password admin
