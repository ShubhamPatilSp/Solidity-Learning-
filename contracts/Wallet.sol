// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

contract SendWithdrawMoney{

    uint public balanceReceived;
    function deposit() public  payable {
        balanceReceived += msg.value;
    }

    function getContreactBalance() public view returns (uint) {
        return address(this).balance;
    }

    function withdrawAll() public {
        address payable to = payable(msg.sender);

        to.transfer(getContreactBalance());
    }
    function withdrawToAddress(address payable  to) public {
        to.transfer(getContreactBalance()); 
    }
}