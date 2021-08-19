FROM ruby:2.7.2

RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - \
  && echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list

RUN apt-get update -yqq \
  && apt-get install -yqq apt-utils \
  build-essential \
  libpq-dev \
  nodejs \
  npm \
  yarn

ENV TZ=America/Argentina/Buenos_Aires
RUN ln -snf /usr/share/zoneinfo/$TZ etc/localtime && \
  echo $TZ > /etc/timezone

# ENV BUNDLE_PATH=/gems
# ENV GEM_PATH=/gems
# ENV GEM_HOME=/gems

RUN gem install bundler 
# -v '2.0.2' \
#  && rm -rf $GEM_HOME/cache/*

RUN gem install rails

RUN mkdir /rails_tutorial
WORKDIR /rails_tutorial

ADD Gemfile /rails_tutorial/Gemfile
ADD Gemfile.lock /rails_tutorial/Gemfile.lock

RUN bundle install

# ADD . /munku

# ADD package.json /munku/package.json
# ADD yarn.lock /munku/yarn.lock
# RUN yarn install --check-files


CMD rm -f tmp/pids/server.pid && ./bin/server
