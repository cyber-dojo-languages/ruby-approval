#!/bin/bash -Eeu

apk --update add --virtual build-dependencies build-base
gem install rspec approvals --no-document
NOKOGIRI_USE_SYSTEM_LIBRARIES=1 gem install nokogiri
apk del build-dependencies build-base
rm -vrf /var/cache/apk/*
