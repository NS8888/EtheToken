// SPDX-License-Identifier: MIT
//.
pragma solidity ^0.8.0;
import "./ERC721.sol";
contract MRTNFT is ERC721 {
    constructor() ERC721("Moon Roket Ticket", "MRT") {
        
    }
    function burn(uint256 tokenId) external {
        _burn(tokenId);
    }
    function mint(address to, uint256 tokenId) external onlyOwner {
        _mint(to,tokenId);
    }
    function _baseURI() override internal view virtual returns (string memory) {
        return "https://etheking.io/api/nft/rocketticket/";
    }
}