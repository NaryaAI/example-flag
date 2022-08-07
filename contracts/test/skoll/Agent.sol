// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.0;

struct Call {
    address to;
    bytes callData;
}

contract Agent {
    function run(Call[] calldata calls) public {
        for (uint256 i = 0; i < calls.length; i++) {
            calls[i].to.call(calls[i].callData);
        }
    }

    function nop() public {}
}
