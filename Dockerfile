#
# Dockerfile for Mailcatcher
#

FROM ruby:2.3
MAINTAINER Benjamin Gamard <b.gamard@sismics.com>
MAINTAINER Jean-Marc Tremeaux <jm.tremeaux@sismics.com>

RUN gem install mailcatcher

EXPOSE 25 1080

CMD ["mailcatcher", "-f", "--smtp-port", "25", "--ip", "0.0.0.0"]