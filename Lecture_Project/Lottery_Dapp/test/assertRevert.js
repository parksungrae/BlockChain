module.exports = async (Promise) => {
    try {
        await Promise;
        assert.fail('Expected revert not received')
    } catch (error) {
        const revertFound = error.message.search('revert')
        assert(revertFound, `Expected "revert", got ${error} instead`);
        
    }
}