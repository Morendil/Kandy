FROM ruby:2.3
WORKDIR /app
CMD bundle install && thin start -p 80
EXPOSE 80
