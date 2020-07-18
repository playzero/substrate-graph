# Substrate Graph

## What
A compact indexer for @paritytech substrate based nodes providing a graphql interface.

## Why
Interacting, archiving and querying transactions on blockchain nodes can become expensive.
An indexer provides unified acces to historic data.

## How

We have built a docker-compose to fire up the required elements pictured below:

![Schema](/doc/stack-basic.png)

The main blocks to get started:

	- make file - make all tasks a little easier
	- .env file - paramaters used in docker-compose and one day in archiver
	- config - configuration for the archiver

1. make init
2. make build — build archiver, based on substrate-archiver
3. make up — run the stack
4. make run — run the archiver

archiver will move to a dockerimage as soon as possible.

## Status

- [X] docker-compose basic skeleton
- [ ] complete setup for polkadot
- [ ] complete setup for custom substrate nodes (substrate node template)
- [ ] config examples
- [ ] tests
- [ ] docker-compose with a load balancer example

## Further Reading

- [Substrate](https://github.com/paritytech/substrate)
- [Substrate Archive](https://github.com/paritytech/substrate-archive)
- [Substrate Developer Portal](https://substrate.dev/)

- [Parity](https://www.parity.io/)
- [Web3 Foundation](https://web3.foundation/)