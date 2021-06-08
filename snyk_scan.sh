#!/bin/sh

docker run -it \
	-e SNYK_TOKEN=$SNYK_TOKEN \
	-e "MONITOR=true" \
	-v "$(pwd):/project" \
	-v "$(pwd)/.gradle:/home/node/.gradle" \
snyk/snyk-cli:gradle-5.4 test --org=835fb533-4b1f-4d2e-a20d-713bcfc41327
