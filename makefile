#
#	S E T U P
#

init:
	mkdir -p data
	cp .env.example .env

#
#	A R C H I V E R
#

build:
	cd packages/substrate-archive && git pull && cd ../../
	START=date
	RUSTC_WRAPPER=/usr/local/bin/sccache \
	cargo build \
	--manifest-path ./packages/substrate-archive/polkadot-archive/Cargo.toml \
	--release
	mkdir -p ./bin
	cp ./packages/substrate-archive/target/release/polkadot-archive ./bin
	echo $START
	date

build-substrate:
	cd packages/substrate-archive && git pull && cd ../../
	START=date
	RUSTC_WRAPPER=/usr/local/bin/sccache \
	cargo build \
	--manifest-path ./packages/substrate-archive/node-template-archive/Cargo.toml \
	--release
	mkdir -p ./bin
	cp ./packages/substrate-archive/target/release/node-template-archive ./bin
	echo ${START}
	date

run:
	./bin/polkadot-archive --chain westend --config config/polkadot-westend.toml

run-substrate:
	./bin/node-template-archive -vv --config config/substrate.toml --spec config/substrate-dev.json

#
#	D O C K E R
#

up:
	docker-compose up --remove-orphans

down:
	docker-compose down

reset:
	rm -rf ./data && mkdir -p ./data
