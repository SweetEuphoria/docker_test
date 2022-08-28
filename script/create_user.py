#!/usr/bin/env bash
airflow users create \
    --email airflowadmin@example.com \
    --firstname admin \
    --lastname admin \
    --password $AIRFLOW_ADMIN_PASSWORD \
    --role Admin \
    --username $AIRFLOW_ADMIN_USER
