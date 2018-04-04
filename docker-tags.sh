#!/bin/bash

if [ "$TRAVIS_BRANCH" == "master" ]; then
  echo kittycash/scoreboard-api:latest
fi

if [ "$TRAVIS_BRANCH" == "dev" ]; then
  echo kittycash/scoreboard-api:latest-dev
fi

echo kittycash/scoreboard-api:$(git rev-parse --short HEAD)

git tag --points-at HEAD | \
  sed -e 's/\(.*\)/kittycash\/scoreboard-api:\1/g'
