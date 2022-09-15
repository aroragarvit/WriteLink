// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.17;
import "./book.sol";

contract library is Book{

    uint256 _bookID=0;

    address private _owner;

    struct book{
        address author;
        uint256 price;
        string content; // link to the content
    }

    mapping (uint256 => book) private _shelf;

    function publish(uint256 _price, string content) public {
        _shelf[_bookId] = book(msg.sender,_price,content);
        _bookID++;
    }

    function purchaseFromAuthor(uint256 _bookId) public {
        
    }

    function bookPrice(uint256 _bookId) public view returns(uint256) {
        return _shelf[_bookId].price;
    }

    function bookAuthor(uint256 _bookId) public view returns(address) {
        return _shelf[_bookId].author;
    }
}