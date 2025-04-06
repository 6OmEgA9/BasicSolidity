// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Library {
    // Define the Book structure
    struct Book {
        string name;
        string author;
        string publisher;
        uint price;
        string branch; // e.g., fiction, biography, thriller
    }

    // Array to store all books
    Book[] public books;

    // Function to add a book to the library
    function addBook(
        string memory _name,
        string memory _author,
        string memory _publisher,
        uint _price,
        string memory _branch
    ) public {
        books.push(Book({
            name: _name,
            author: _author,
            publisher: _publisher,
            price: _price,
            branch: _branch
        }));
    }

    // Function to get books by a specific publisher
    function getBooksByPublisher(string memory _publisher) 
        public 
        view 
        returns (Book[] memory) 
    {
        // Count books from the specified publisher
        uint count = 0;
        for (uint i = 0; i < books.length; i++) {
            if (keccak256(abi.encodePacked(books[i].publisher)) == 
                keccak256(abi.encodePacked(_publisher))) {
                count++;
            }
        }

        // Create a temporary array to store matching books
        Book[] memory result = new Book[](count);
        uint index = 0;
        
        // Populate the result array
        for (uint i = 0; i < books.length; i++) {
            if (keccak256(abi.encodePacked(books[i].publisher)) == 
                keccak256(abi.encodePacked(_publisher))) {
                result[index] = books[i];
                index++;
            }
        }
        
        return result;
    }

    // Function to get books by a specific branch
    function getBooksByBranch(string memory _branch) 
        public 
        view 
        returns (Book[] memory) 
    {
        // Count books in the specified branch
        uint count = 0;
        for (uint i = 0; i < books.length; i++) {
            if (keccak256(abi.encodePacked(books[i].branch)) == 
                keccak256(abi.encodePacked(_branch))) {
                count++;
            }
        }

        // Create a temporary array to store matching books
        Book[] memory result = new Book[](count);
        uint index = 0;
        
        // Populate the result array
        for (uint i = 0; i < books.length; i++) {
            if (keccak256(abi.encodePacked(books[i].branch)) == 
                keccak256(abi.encodePacked(_branch))) {
                result[index] = books[i];
                index++;
            }
        }
        
        return result;
    }

    // Function to get the total number of books (optional helper)
    function getBookCount() public view returns (uint) {
        return books.length;
    }
}