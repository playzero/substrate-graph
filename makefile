#
#	S E T U P
#

init:
	mkdir -p data
	cp .env.example .env

#
#	D O C K E R
#

run:
	docker-compose up --remove-orphans

down:
	docker-compose down

reset:
	rm -rf ./data/pg
	rm -rf ./data/polkadot
	rm -rf ./data/substrate
	rm -rf ./data/grafana
