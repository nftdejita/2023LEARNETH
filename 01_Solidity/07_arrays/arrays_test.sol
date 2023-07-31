pragma solidity ^0.8.3;
import "remix_tests.sol";
import "remix_accounts.sol";
import "./arrays.sol";

contract MyTest {
    Arrays foo;
    address acc0;

    function beforeEach() public {
        acc0 = TestsAccounts.getAccount(0);
        foo = new Arrays();
    }

    function checkArrays() public {
        foo.setFixedArray(0, 123);
        foo.setFixedArray(1, 456);
        foo.pushDynamicArray(789);
        foo.pushDynamicArray(101112);
        Assert.equal(foo.getFixedArray(0), 123, "fixedArray[0] is not correct");
        Assert.equal(foo.getFixedArray(1), 456, "fixedArray[1] is not correct");
        Assert.equal(foo.getDynamicArray(0), 789, "dynamicArray[0] is not correct");
        Assert.equal(foo.getDynamicArray(1), 101112, "dynamicArray[1] is not correct");
        foo.popDynamicArray();
        Assert.equal(foo.getDynamicArrayLength(), 1, "dynamicArray length is not correct");
    }
}
