pragma solidity ^0.8.0;

contract ContohArray {
  
    // Dynamic-size array
    uint256[] public dynamicSizeArray;

    // Menambahkan elemen ke dalam dynamic-size array
    function tambahElemen(uint256 _nilai) public {
        dynamicSizeArray.push(_nilai);
    }

    // Mengakses elemen pada array berdasarkan indeks
    function getElemen(uint256 _indeks) public view returns (uint256) {
        return dynamicSizeArray[_indeks];
    }
}
