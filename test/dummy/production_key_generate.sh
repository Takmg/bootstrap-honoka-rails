#!/bin/sh

EDITOR=vim bundle exec rails credentials:edit
export SECRET_KEY_BASE=`bundle exec rake secret`