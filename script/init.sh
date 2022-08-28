#!/bin/bash
sleep 10
airflow upgradedb
sleep 10

# Запуск шедулера и вебсервера
airflow webserver & airflow scheduler
sleep 10
airflow create_user \
  --email airflowadmin@example.com \
  --firstname admin \
  --lastname admin \
  --password admin \
  --role Admin \
  --username admin
