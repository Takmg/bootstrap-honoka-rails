#!/bin/bash

pushd test/dummy

EDITOR="vim" bundle exec bin/rails credentials:edit
export SECRET_KEY_BASE=`bundle exec bin/rails secret`

popd