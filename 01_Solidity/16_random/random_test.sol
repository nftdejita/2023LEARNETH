pragma solidity ^0.8.3;
import "remix_tests.sol";
import "./random.sol";

contract MyTest {
    TestContract testContract;

    function beforeEach() public {
        testContract = new TestContract();
    }

    function checkRandomNumber() public {
        uint randomNumber = testContract.generateRandomNumber();
        Assert.notEqual(randomNumber, 0, "Generated random number should not be 0");
    }
}
