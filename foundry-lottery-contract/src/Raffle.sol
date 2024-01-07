// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.18;

contract Raffle{
    uint256 private immutable i_entranceFee;
    address payable[] private s_players;
    error Raffle__NotEnoughEthSent();
    constructor(uint256 entranceFee){
    i_entranceFee=entranceFee;
    }
    function enterRaffle() public payable{
        if(msg.value<i_entranceFee){
        revert Raffle__NotEnoughEthSent();


        }
s_players.push(payable(msg.sender));

    }
    function pickWinner() public{

    }
}