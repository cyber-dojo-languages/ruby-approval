#!/bin/bash -Eeu

apk --update add --virtual build-dependencies build-base
gem install rspec approvals nokogiri --no-document
apk del build-dependencies build-base
rm -vrf /var/cache/apk/*
