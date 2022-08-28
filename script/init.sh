#!/bin/bash

# Создание БД
sleep 10
airflow upgradedb
sleep 10

# Запуск шедулера и вебсервера
airflow scheduler & airflow webserver

airflow create_user \
       --username admin \
       --firstname Airflow \
       --lastname Admin \
       --email airflowadmin@example.com \
       --role Admin \
       --password admin
