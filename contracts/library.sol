// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.17;
import "./book.sol";

contract library is Book{

    uint256 _bookID=0;

    address private _owner;

    struct book{
        string name;
        address author;
        uint256 price;
        bytes memory content; // link to the content
    }

    mapping (uint256 => book) private _shelf;

    function publish(uint256 _price, bytes memory content,string name) public {
        _shelf[_bookId] = book(msg.sender,_price,content,name);
        _bookID++;
    }

    function purchaseFromAuthor(uint256 _bookId, uint256 payment) public payable {
        require(msg.value >=_shelf[_bookId]._price , 'Must send at least Book Price');

        _mint(msg.sender,_bookId,1,_shelf[_bookId].content);
    }

    function bookPrice(uint256 _bookId) public view returns(uint256) {
        return _shelf[_bookId].price;
    }

    function bookAuthor(uint256 _bookId) public view returns(address) {
        return _shelf[_bookId].author;
    }
}