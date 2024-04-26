// SPDX-License-Identifier: MIT
pragma solidity ^0.8.5;

contract FunctionTypes{
    uint256 public number = 5;
    // 默认
    function add() external {
        number+=1;
    }
    
    function getContractAddress() external  view returns (address){
        return address(this);
    }

    // pure: 纯纯牛马
    function addPure (uint256 _number) external pure returns (uint256 new_number){
        new_number = _number + 1;
    }
    // view: 看客
    function addView( )external  view returns(uint256 new_number){
        new_number = number +1;
    } 

    function minus() internal {
        number = number - 1;
    }

    function minusCall() external {
        minus();
    }

    function minunPayable() external  payable  returns(uint256 balance){
        minus();
        balance = address(this).balance;
    }
}