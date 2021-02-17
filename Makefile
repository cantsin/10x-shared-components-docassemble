.PHONY: update

all: update
	docker-compose up

# update to the latest and greatest: in particular docassemble tends
# to be updated frequently
update:
	docker-compose pull
