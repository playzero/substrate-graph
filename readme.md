# Substrate Graph

## What
A compact indexer for @paritytech substrate based nodes providing a graphql interface.

## Why
Interacting, archiving and querying transactions on blockchain nodes can become expensive.
An indexer provides unified access to historic data. Parsing and creating complex interfaces with this data is cumbersome when using REST, GraphQL offers the latest and greatest to query, subscribe and mutate data leading to efficient data structures and therefore hopefully cleaner code and better (D)Apps.

## How
We have built a docker-compose to fire up a stack as pictured below:

![Schema](/doc/stack-basic.png)

### Getting started

This is tested on macOS and Linux. Experience may vary on Windoze.

Requirements:
- docker
- docker-compose
- text editor
- (make)

If you want to build/edit frontend or archiver:
- rust

### Run it

0. clone the repo `git clone https://github.com/playzero/substrate-graph && cd substrate-graph`
1. setup your env vars or start with a clone of `.env.example` ('')
2. setup your archiver config and chainspec in `./config`
3. `docker-compose up`
4. log in to hasura `localhost:18080` and enter your admin password
5. on the data tab, add all untracked items
6. have phun in graphiql!

All data will be persisted in your local repository `./data`. Inside all services will store their data, like postgres, substrate/polkadot/kusama. To restart fresh, when things go south, make sure to clean up the contents of the data folder.

## Frontend

An example app has been created in packages/substrate-graph-frontend.
To get started with it, from your substrate-graph dir, get the submodules with
`git submodule init && git submodule update`.

After that you may build the frontend app like this and run it afterwards:
`cd ./packages/substrate-graph-frontend && yarn`, then `yarn start`.

if everything runs smoothly, you will see a graphql subscription rendering into a block number and a small table showing recent blocks and contents.

## Substrate-Archive

Currently an older archive version is used for building the docker images, which are used in the compose file. They are based on code found at packages/substrate-archive. This will be updated but ofc you may use your own images here, if you so wish.

## Status

- [X] add polkadot
- [X] add custom substrate nodes (substrate node template)
- [X] add config examples
- [X] add docker-compose
- [X] add subscriptions
- [X] add frontend example
- [ ] add monitoring dashboard
- [ ] add load balancer
- [ ] kubernetes / helm chart

## Discuss

Join us on Discord: [ZERO on Discord](https://discord.gg/gtya5Dv)


## Support us

Donations welcome: gamedao.eth / 0x5ae30612FC6CDA7190a5195cdA95107605450dF4

## Credits

- [Substrate Archive](https://github.com/paritytech/substrate-archive)

## Further Reading

- [Substrate](https://github.com/paritytech/substrate)
- [Substrate Developer Portal](https://substrate.dev/)
- [Parity](https://www.parity.io/)
- [Web3 Foundation](https://web3.foundation/)