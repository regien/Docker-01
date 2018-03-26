#ft-rails

FROM ruby

RUN apt-get update && apt-get upgrade -y && apt-get install build-essential -y
RUN apt-get install sqlite3 nodejs -y && gem install rails
RUN gem install bundler
RUN mkdir /opt/app

WORKDIR /opt/app
#RUN gem install rails
ONBUILD COPY . /opt/app
ONBUILD RUN bundle install
ONBUILD RUN rake db:migrate && rake db:seed
ONBUILD EXPOSE 3000
