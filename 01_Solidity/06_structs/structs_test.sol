pragma solidity ^0.8.3;
import "remix_tests.sol";
import "remix_accounts.sol";
import "./structs.sol";

contract MyTest {
    Structs foo;
    address acc0;

    function beforeEach() public {
        acc0 = TestsAccounts.getAccount(0);
        foo = new Structs();
    }

    function checkPerson() public {
        foo.setPerson("Alice", 20);
        (string memory name, uint age) = foo.getPerson();
        Assert.equal(name, "Alice", "Person's name is not correct");
        Assert.equal(age, 20, "Person's age is not correct");
    }
}
