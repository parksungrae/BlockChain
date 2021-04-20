const Lottery = artifacts.require("Lottery");
const assertRevert = require("./assertRevert"); 

contract('Lottery', function([deployer, user1, user2]) {
    beforeEach(async () => {
        console.log('Before each')
        lottery = await Lottery.new()
    })

    it('getPot should return current pot', async () => {
        let pot = await lottery.getPot();
        assert.equal(pot, 0)
    }) 

    describe('Bet', function () {
        it('should fail when the bet money is not 0.005 ETH',async () => {
            await assertRevert(lottery.bet('0xab', {from : user1, value : 4000000000000000} ))
        })
        it.only('should put the bet to the bet queue with 1 bet', async () => {
            let receipt = await lottery.bet('0xab', {from : user1, value : 5000000000000000} )
            console.log(receipt);
        })
    })
});