#!/bin/sh

source .env

anvil --fork-url=${FORK_URL} --fork-block-number=8166444
