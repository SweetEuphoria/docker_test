#!/bin/bash

# Запуск шедулера и вебсервера
airflow webserver 
sleep 10
airflow users create \
    --email airflowadmin@example.com \
    --firstname admin \
    --lastname admin \
    --password 12345 \
    --role Admin \
    --username admin
sleep 10
airflow scheduler
