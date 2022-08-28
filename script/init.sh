#!/bin/bash

# Создание БД
sleep 10
airflow upgradedb
sleep 10

# Запуск шедулера и вебсервера
airflow scheduler & airflow webserver & /project/scripts/create_user.py
