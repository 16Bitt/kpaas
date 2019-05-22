FROM ruby:2.5.1-alpine

RUN apk update && apk add bash build-base
RUN mkdir /app
WORKDIR /app

COPY Gemfile Gemfile.lock ./
RUN bundle install -j5
COPY . ./