// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

import "contracts/Flag.sol";
import "@pwnednomore/contracts/Agent.sol";

contract TestFlag is Agent {
    Flag flag;

    function setUp() external {
        flag = new Flag();
    }

    function check() external view override {
        require(flag.flag1(), "flag1 is false");
    }
}
