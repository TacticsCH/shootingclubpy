#   FROM python:3.7-alpine
# VOLUME [".", "/app"]
# WORKDIR /app
# RUN systemctl disable apparmore.service --now
# RUN pip install -r requirements.txt
# ENTRYPOINT ["python"]
# CMD ["app.py"]


# FROM python:2.7
# VOLUME $(pwd) /app
# WORKDIR /app
# RUN pip install -r requirements.txt
# WORKDIR /app/app
# ENTRYPOINT ["python"]
# CMD ["app.py"]


FROM tiangolo/uwsgi-nginx:python3.7
ENV STATIC_URL /static
ENV STATIC_PATH /app/app/static
#COPY ./web /app
#RUN apt update && apt install -y libmysqlclient-dev
RUN pip install flask flask_restful flask-sqlalchemy mysqlclient