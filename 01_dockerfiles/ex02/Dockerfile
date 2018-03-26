
FROM              ruby

# Install rails and create the rails application path.
# You'll also be needing sqlite3 and nodejs to be able to deploy

RUN               apt-get update && gem install rails && gem install bundler
RUN				  apt-get install nodejs libgmp3-dev sqlite3 -y
RUN               mkdir /opt/app

# Add the application to the application path.

ONBUILD WORKDIR   /opt/app
ONBUILD ADD       . /opt/app

# Default Ruby on Rails port number

ONBUILD EXPOSE    3000

# Run bundle install to be able to install all the necessary gems in the Gemlock
# file.
ONBUILD RUN       bundle update json nokogiri rdoc rails
ONBUILD RUN       bundle update spring && bundle exec spring binstub --remove --all && bundle exec spring binstub --all
ONBUILD RUN       bundle install

# Rakes the migrations and finalize seeds the database.

ONBUILD RUN       rake db:migrate && rake db:seed
