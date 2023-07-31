pragma solidity ^0.8.3;
import "remix_tests.sol";
import "remix_accounts.sol";
import "./visibility.sol";

contract MyTest {
    Visibility foo;
    address acc0;

    function beforeEach() public {
        acc0 = TestsAccounts.getAccount(0);
        foo = new Visibility();
    }

    function checkVariables() public {
        foo.setPrivateVar(1);
        foo.setInternalVar(2);
        foo.setPublicVar(3);
        Assert.equal(foo.getPrivateVar(), 1, "privateVar is not correct");
        Assert.equal(foo.getInternalVar(), 2, "internalVar is not correct");
        Assert.equal(foo.publicVar(), 3, "publicVar is not correct");
    }

    function checkExternalFunction() public {
        Assert.equal(foo.callExternalFunction(), 123, "externalFunction is not correct");
    }
}
