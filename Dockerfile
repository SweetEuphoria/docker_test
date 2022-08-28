FROM python:3.7

ARG AIRFLOW_VERSION=1.10.14
ARG AIRFLOW_USER_HOME=/usr/local/airflow
ENV AIRFLOW_HOME=${AIRFLOW_USER_HOME}

RUN pip install apache-airflow[postgres]==${AIRFLOW_VERSION}
RUN pip install SQLAlchemy==1.3.23
RUN pip install markupsafe==2.0.1
RUN pip install wtforms==2.3.3
RUN pip install flask-bcrypt

RUN mkdir /project

COPY script/ /project/scripts/
COPY config/airflow.cfg ${AIRFLOW_HOME}/airflow.cfg
COPY dags/ /project/dags/

RUN chmod +x /project/scripts/init.sh
RUN chmod +x /project/scripts/auth.sh
RUN chmod +x /project/scripts/create_user.py

# Запускаем скрипты
CMD ["python", "/project/scripts/create_user.py"]
ENTRYPOINT ["/project/scripts/init.sh","/project/scripts/auth.sh"]
