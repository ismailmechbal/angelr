FROM ruby:2.3.1
MAINTAINER Ismail Mechbal <ismail@werunik.com>

RUN apt-get update && apt-get install -y \
    libpq-dev \
    build-essential \
    nodejs \
    qt5-default \
    wget\
    python2.7-dev \
    vim

ENV APP_HOME /webapp/angelr_app
RUN mkdir -p $APP_HOME
WORKDIR $APP_HOME

ADD ./Gemfile* $APP_HOME/
RUN echo 'gem: --no-rdoc --no-ri' >> /.gemrc
RUN bundle install

COPY . $APP_HOME/