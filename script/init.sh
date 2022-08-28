#!/bin/bash

airflow upgradedb
sleep 5

# Запуск шедулера и вебсервера
airflow webserver & airflow scheduler
