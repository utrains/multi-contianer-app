FROM python:3.9-buster
# declearing the path as a variable
ENV SERVICE=/opt/app/ecommerce
# lets create a user and group for our container

# set work directory
RUN apt-get update \
    && apt-get -y install libpq-dev gcc \
    && pip install psycopg2
RUN apt-get install postgresql-client gcc python3-dev musl-dev -y
RUN mkdir -p $SERVICE
RUN mkdir -p $SERVICE/static_root

# where the code lives
WORKDIR $SERVICE

# set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# install psycopg2 dependencies

# install dependencies
RUN pip install --upgrade pip #this upgrades python pip to the latest version
# copy project
COPY . $SERVICE
RUN pip install -r requirements.txt
COPY ./entrypoint.sh $SERVICE
CMD ["/bin/bash", "/opt/app/ecommerce/entrypoint.sh"]
