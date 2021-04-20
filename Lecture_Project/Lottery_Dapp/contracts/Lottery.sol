pragma solidity >=0.4.22 <0.9.0;


contract Lottery {
    struct BetInfo{
        uint256 answerBlockNumber;
        address bettor;
        bytes challenges;
    }

    uint256 private _tail; // for queue
    uint256 private _head;
    mapping (uint256 => BetInfo) private _bets;
    address public owner;

    uint256 constant internal BLOCK_LIMIT = 256;
    uint256 constant internal BET_BLOCK_INTERVAL = 3;
    uint256 constant internal BET_AMOUNT = 5 * 10 ** 15;
    uint256 private _pot;

    event BET(uint256 index, address bettor, uint256 amount, bytes challenges, uint256 answerBlockNumber );

    constructor() public{
        owner = msg.sender;
    }
    /**

     * @dev 배팅, user -> 0.005 eth , 배팅용 1byte 글자를 보냄
     * @param challenges 유저의 베팅 글자
     * @return result 함수가 잘 수행되었는지 확인하는 bool 값

    */
    function bet(bytes memory challenges) public payable returns (bool result) {
        require(msg.value == BET_AMOUNT, "Not enough ETH");

        emit BET(_tail -1, msg.sender, msg.value, challenges, block.number + BET_BLOCK_INTERVAL);

        require(pushBet(challenges), "Failed to add a new Bet Info");
        return true;
    }
    
 
    function getPot() public view returns(uint256 pot) {
        return _pot;
    }

    function getBetInfo (uint256 index) public view returns (uint256 answerBlockNumber, address bettor, bytes memory challenges) {
        BetInfo memory b = _bets[index];
        answerBlockNumber = b.answerBlockNumber;
        bettor = b.bettor;
        challenges = b.challenges;
    }
    function pushBet(bytes memory challenges) internal returns (bool) {
        BetInfo memory b;
        b.bettor = msg.sender;
        b.answerBlockNumber = block.number + BET_BLOCK_INTERVAL; 
        b.challenges = challenges; 

        _bets[_tail] = b;
        _tail++;
        return true;
    }

    function popBet(uint256 index) internal returns (bool) {
        delete _bets[index];
        return true;
    }
}