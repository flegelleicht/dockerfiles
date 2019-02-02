#!/bin/bash
set -e

if [ -f /app/tmp/pids/server.pid ]; then
	rm /app/tmp/pids/server.pid
fi

if [ -f Gemfile ]; then
	bundle install
fi

exec rails $*

