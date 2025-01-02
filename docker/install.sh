#!/bin/bash -Eeu

apk --update add --virtual build-dependencies build-base
gem install rspec approvals --no-document
gem install nokogiri --platform=ruby
apk del build-dependencies build-base
rm -vrf /var/cache/apk/*
