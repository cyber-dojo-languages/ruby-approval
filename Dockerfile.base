FROM cyberdojofoundation/ruby
LABEL maintainer=jon@jaggersoft.com

RUN apk --update add --virtual build-dependencies build-base \
  && gem install rspec approvals \
  && apk del build-dependencies build-base \
  && rm -vrf /var/cache/apk/*

COPY red_amber_green.rb /usr/local/bin
