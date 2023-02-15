FROM ruby

WORKDIR /code/
COPY Gemfile* /code/
RUN bundle install

EXPOSE 3000