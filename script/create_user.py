#!/bin/bash
airflow users create \
    --email airflowadmin@example.com \
    --firstname admin \
    --lastname admin \
    --password admin \
    --role Admin \
    --username admin
