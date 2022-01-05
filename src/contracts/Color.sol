pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721Enumerable.sol";

contract Color is ERC721, ERC721Enumerable {
  string[] public colors;
  mapping(string => bool) _colorExists;
    constructor() ERC721("Color", "CLR") public {
    }


    function mint(string memory _color) public {
      require(!_colorExists[_color]);
      colors.push(_color);
      uint _id = colors.length;
      _mint(msg.sender, _id);
      _colorExists[_color] = true;
      //Color - add
     //Call mint function
     //Color - track it
    }

//Required overrides for new version of OpenZeppelin:
    function _beforeTokenTransfer(address from, address to, uint256 tokenId)
    internal
    override(ERC721, ERC721Enumerable)
{
    super._beforeTokenTransfer(from, to, tokenId);
}

function supportsInterface(bytes4 interfaceId)
    public
    view
    override(ERC721, ERC721Enumerable)
    returns (bool)
{
    return super.supportsInterface(interfaceId);
}
//When called after mint(), totalSupply() can now be called in test

}
