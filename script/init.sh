#!/bin/bash

airflow upgradedb
sleep 5

# Запуск шедулера и вебсервера
airflow webserver &
airflow users create \
    --email airflowadmin@example.com \
    --firstname admin \
    --lastname admin \
    --password admin \
    --role Admin \
    --username admin &
airflow scheduler
