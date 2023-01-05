#!/bin/sh

ITEM=$1

cast send 0xd2D85C4650BDD3B26B2C6Db1c9b32D7007Cf352D "add(uint256)" ${ITEM} --private-key 0xac0974bec39a17e36ba4a6b4d238ff944bacb478cbed5efcae784d7bf4f2ff80
