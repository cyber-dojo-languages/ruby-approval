#!/bin/bash -Eeu

apk --update add --virtual build-dependencies build-base
echo "gem: --no-rdoc --no-ri" > ~/.gemrc
gem install rspec approvals
apk del build-dependencies build-base
rm -vrf /var/cache/apk/*
