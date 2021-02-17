.PHONY: update

all: update
	docker-compose up

# update to the latest and greatest: in particular docassemble tends
# to be updated frequently
update:
	docker-compose pull

data:
	psql -p 5432 -d docassemble -U postgres -h localhost -c "select id,data::json->'wifi_sessions' as wifi_sessions from jsonstorage;"
