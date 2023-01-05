import { IncrementalMerkleTree } from "@zk-kit/incremental-merkle-tree";
import { poseidon } from "circomlibjs";

{
    const tree = new IncrementalMerkleTree(poseidon, 4, 0, 2);
    for (let i = 1; i <= 16; i++) {
        tree.insert(BigInt(i));
    }
    console.log(tree.root.toString());
}
{
    const tree = new IncrementalMerkleTree(poseidon, 8, 0, 2);
    for (let i = 1; i <= 256; i++) {
        tree.insert(BigInt(i));
    }
    console.log(tree.root.toString());
}
{
    const tree = new IncrementalMerkleTree(poseidon, 12, 0, 2);
    for (let i = 1; i <= 4096; i++) {
        tree.insert(BigInt(i));
    }
    console.log(tree.root.toString());
}
