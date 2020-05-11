FROM ruby:2.6.5

RUN apt-get update -yqq && apt-get install -yqq --no-install-recommends nodejs

RUN mkdir /usr/src/app

COPY Gemfile* /usr/src/app
WORKDIR /usr/src/app
RUN bundle install

COPY . /usr/src/app

ENTRYPOINT ["./entrypoint.sh"]
CMD [ "bin/rails", "s", "-b", "0.0.0.0" ]
