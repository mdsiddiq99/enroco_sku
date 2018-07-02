FROM ruby:2.5
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /enroco_sku
WORKDIR /enroco_sku
COPY Gemfile /enroco_sku/Gemfile
COPY Gemfile.lock /enroco_sku/Gemfile.lock
RUN bundle install
COPY . /enroco_sku
