// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "zk-kit/packages/incremental-merkle-tree.sol/contracts/IncrementalBinaryTree.sol";
import "forge-std/console.sol";

contract TreeTest {
    using IncrementalBinaryTree for IncrementalTreeData;

    IncrementalTreeData data;

    constructor(uint256 depth) {
        data.init(depth, 0);
    }

    function add(uint256 item) public {
        data.insert(item);
        console.log("add: root: %d", data.root);
    }
}
