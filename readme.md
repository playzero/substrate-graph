# Substrate Graph

## What
A compact indexer for @paritytech substrate based nodes providing a graphql interface.

## Why
Interacting, archiving and querying transactions on blockchain nodes can become expensive.
An indexer provides unified acces to historic data.

## How

We have built a docker-compose to fire up the required elements pictured below:

![Schema](/doc/stack-basic.png)

How to get started:

1. setup your env vars or start with a clone of .env.example
2. setup your archiver config and chainspec in ./config
3. docker-compose up
4. log in to hasura `localhost:18080` and enter your admin password
5. on the data tab, add all untracked items
6. have phun in graphiql

## Status

- [X] docker-compose basic skeleton
- [X] complete setup for polkadot
- [X] complete setup for custom substrate nodes (substrate node template)
- [X] config examples
- [ ] tests
- [ ] docker-compose
- [ ] add load balancer
- [ ] add dashboard

## Support us

Donations welcome: gamedao.eth / 0x5ae30612FC6CDA7190a5195cdA95107605450dF4

## Credits

- [Substrate Archive](https://github.com/paritytech/substrate-archive)

## Further Reading

- [Substrate](https://github.com/paritytech/substrate)
- [Substrate Developer Portal](https://substrate.dev/)
- [Parity](https://www.parity.io/)
- [Web3 Foundation](https://web3.foundation/)