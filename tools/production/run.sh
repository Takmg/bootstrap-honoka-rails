#!/bin/bash

pushd test/dummy

export RAILS_ENV="production"
bundle exec bin/rails s -b 0.0.0.0 -e production
export RAILS_ENV=""

popd