FROM ubuntu:trusty

RUN apt-get update && \
apt-get install -y build-essential ruby1.9.1-dev libxslt-dev libxml2-dev

RUN gem install bundler

ADD . ./

RUN bundle config path ./bundler && \
NOKOGIRI_USE_SYSTEM_LIBRARIES=1 bundle install

VOLUME /var/geminabox-data
EXPOSE 9292

CMD bundle exec rackup --host 0.0.0.0
