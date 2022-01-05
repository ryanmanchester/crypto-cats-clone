pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract Color is ERC721 {
  string[] public colors;
  mapping(string => bool) _colorExists;
    constructor() ERC721 ("Color", "CLR") public {
    }
    function mint(string memory _color) public {
      //Require unique color
      uint _id = colors.push(_color);
      _mint(msg.sender, _id);
      _colorExists[_color] = true;
      //Color - add
     //Call mint function
     //Color - track it
    }
}
