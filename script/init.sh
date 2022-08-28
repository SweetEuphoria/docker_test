#!/bin/bash

airflow upgradedb
sleep 15

# Запуск шедулера и вебсервера
airflow webserver & airflow scheduler &
airflow create_user \
  --email airflowadmin@example.com \
  --firstname admin \
  --lastname admin \
  --password admin \
  --role Admin \
  --username admin
sleep 15
