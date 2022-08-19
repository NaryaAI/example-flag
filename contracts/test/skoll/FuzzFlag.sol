// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.0;

import "./Agent.sol";
import "contracts/Flag.sol";

contract FuzzFlag is Agent {
    Flag flag;

    function setUp() public {
        flag = new Flag();
    }

    function check() public view {
        require(flag.flag1(), "flag1 is false");
    }
}
