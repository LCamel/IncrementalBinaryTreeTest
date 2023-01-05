#!/bin/sh
DEPTH=5
forge create src/TreeTest.sol:TreeTest --libraries=lib/zk-kit/packages/incremental-merkle-tree.sol/contracts/IncrementalBinaryTree.sol:IncrementalBinaryTree:0x61AE89E372492e53D941DECaaC9821649fa9B236 --private-key 0xac0974bec39a17e36ba4a6b4d238ff944bacb478cbed5efcae784d7bf4f2ff80 --constructor-args ${DEPTH} 
