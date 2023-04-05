    pragma solidity ^0.8.0;

contract ContohVisibility {
    // State variable
    uint256 private dataPrivate;
    uint256 internal dataInternal;

    // Fungsi public yang dapat diakses oleh siapa saja
    function fungsiPublic() public returns (string memory) {
        return "Ini adalah fungsi public";
    }

    // Fungsi private yang hanya dapat diakses di dalam kontrak ini
    function fungsiPrivate() private returns (string memory) {
        return "Ini adalah fungsi private";
    }

    // Fungsi internal yang dapat diakses di dalam kontrak ini dan kontrak yang mewarisi
    function fungsiInternal() internal returns (string memory) {
        return "Ini adalah fungsi internal";
    }

    // Fungsi untuk menguji pemanggilan fungsi private dan internal
    function testFungsi() public returns (string memory, string memory) {
        string memory resultPrivate = fungsiPrivate();
        string memory resultInternal = fungsiInternal();
        return (resultPrivate, resultInternal);
    }
}

contract ContohWarisan is ContohVisibility {
    
// Fungsi ini akan menguji pemanggilan fungsiInternal() dari kontrak yang mewarisi
    function testFungsiDariWarisan() public returns (string memory) {
        string memory resultInternal = fungsiInternal();
        return resultInternal;
    }
}
