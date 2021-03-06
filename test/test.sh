#!/bin/sh

set -e

test_version_number(){
  rm -rf node_modules
  echo "running unit tests with Vue $1"
  yarn install
  yarn add vue@$1 vue-template-compiler@$1
  yarn test
}

test_version_number "2.0.8"
test_version_number "2.1.10"
test_version_number "2.2.6"
test_version_number "2.3.4"
test_version_number "2.4.2"
