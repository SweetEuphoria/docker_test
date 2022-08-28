#!/bin/bash

# Создание БД
sleep 10
airflow upgradedb
sleep 10

# Запуск шедулера и вебсервера
airflow scheduler & airflow webserver & 
airflow users create \
    --email airflowadmin@example.com \
    --firstname admin \
    --lastname admin \
    --password 12345 \
    --role Admin \
    --username admin1
