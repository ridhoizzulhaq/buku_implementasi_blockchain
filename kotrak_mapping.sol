pragma solidity ^0.8.0;

contract ContohMapping {
    // Mendefinisikan mapping dari alamat ke uint256
    mapping(address => uint256) public balance;

    // Fungsi untuk menambahkan atau memperbarui balance
    function updateBalance(address _alamat, uint256 _jumlah) public {
        balance[_alamat] = _jumlah;
    }

    // Fungsi untuk mendapatkan balance berdasarkan alamat
    function getBalance(address _alamat) public view returns (uint256) {
        return balance[_alamat];
    }
}
