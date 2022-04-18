FROM ruby:latest
WORKDIR /usr/src/app/
ADD . /usr/src/app/
RUN bundle install
EXPOSE 4567
CMD ["ruby", "/usr/src/app/api-client.rb", "-o", "0.0.0.0"]