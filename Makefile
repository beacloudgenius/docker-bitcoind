#!/usr/bin/make

SHELL = /bin/sh

# https://dev.to/acro5piano/specifying-user-and-group-in-docker-i2e
# https://stackoverflow.com/questions/55916455/export-current-user-id-in-makefile-for-docker-compose

export CURRENT_UID=1000
export CURRENT_GID=1000

up:
	echo ${CURRENT_UID}
	docker-compose up -d

down:
	docker-compose down
