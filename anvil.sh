#!/bin/sh

source .env

cast chain-id >/dev/null 2>&1 && exit  # if already running

anvil --fork-url=${FORK_URL} --fork-block-number=8166444 -a 1 > anvil.log 2>&1 &

PID=$!
echo $PID > anvil.pid

until cast chain-id >/dev/null 2>&1 ; do sleep 1 ; done

echo "anvil PID: $PID"
