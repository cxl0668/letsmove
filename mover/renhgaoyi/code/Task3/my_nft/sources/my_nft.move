module my_nft::my_nft;
use std::string;
use std::string::{String, bytes};
use sui ::transfer::transfer;
use sui::token::recipient;
use sui::tx_context::sender;

public struct MyNFT has key{
    id: UID,
    name:String,
    image_url: String
}

fun init(ctx: &mut TxContext){

    let my_nft = MyNFT{
        id:object::new(ctx),
        name:string::utf8(b"renhgaoyi NFT"),
        image_url: string::utf8(b"https://avatars.githubusercontent.com/u/73182578?s=400&u=994a3db07f2dfae457e730a221e79393ec48731c&v=4"),
    };

    transfer(my_nft,sender(ctx));
}
public entry fun mint(url:String,ctx: &mut TxContext){
    let my_nft = MyNFT{
        id:object::new(ctx),
        name:string::utf8(b"renhgaoyi NFT"),
        image_url:url
    };

    transfer(my_nft,sender(ctx));
}