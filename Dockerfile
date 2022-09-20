FROM ruby:3.1.2
# FROM node:14.18-alpine
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - \
  && echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list \
  && apt-get update -qq \
  && apt-get install -y nodejs yarn
WORKDIR /app


COPY ./backend /api
# RubyGemsをアップデート
RUN gem update --system ${RUBYGEMS_VERSION}
RUN bundle config --local set path 'vendor/bundle' \
  && bundle install