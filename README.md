# Hashsum [![Gem Version](https://badge.fury.io/rb/hashsum.png)](http://badge.fury.io/rb/hashsum)

## Install

    gem install hashsum

## Algorithms

* MD5
* SHA1
* SHA2
  * SHA256
  * SHA384
  * SHA512

## Usage

    "String to Hash".hashsum(:md5)              => "eda58b412d6e55a2eebb5b5f731330bd"
    "String to Hash".hashsum(:md5, "with Salt") => "4fb893fcf815198c0905e59d6685b5ec"
    "String to Hash".to_md5                     => "eda58b412d6e55a2eebb5b5f731330bd"
    "String to Hash".to_sha1                    => "2bcea1ad0b1afe203aa12c470bdf545df9ef5dfd"
    "String to Hash".to_md5("with Salt")        => "4fb893fcf815198c0905e59d6685b5ec"
    "String to Hash".to_sha1("with Salt")       => "d16dbd40354fe3b418da952e648f4eca37e05a78"

## Author

[@fraskyrusso](http://twitter.com/fraskyrusso)

## License

This gem is published under MIT and GPL