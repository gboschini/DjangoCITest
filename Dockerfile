FROM python:3.5.2

ENV PYTHONUNBUFFERED 1

RUN apt-get -qy update && \
    apt-get -qy dist-upgrade && \
    apt-get -qy install \
    supervisor \
    gettext \
    libpq-dev \
    postgresql-client \
    libav-tools

RUN pip install --upgrade pip
RUN pip install --upgrade setuptools

RUN mkdir /code
WORKDIR /code

ADD requirements.txt /code/
ADD requirements_tests.txt /code/
RUN pip install -r requirements_tests.txt

ADD . /code/
