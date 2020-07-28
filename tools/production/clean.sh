#!/bin/bash

pushd test/dummy

export RAILS_ENV="production"
bundle exec bin/rails assets:clobber

export RAILS_ENV=""

popd