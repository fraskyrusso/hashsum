class String
  # Algorithms
  HASH = {
    md5:    Digest::MD5,
    sha1:   Digest::SHA1,
    sha2:   Digest::SHA2,
    sha256: Digest::SHA256,
    sha384: Digest::SHA384,
    sha512: Digest::SHA512
  }
  def hashsum(hash, salt = "")
    require 'digest'
    HASH[hash].hexdigest(salt+self)
  end
  def to_md5(salt = "")
    hashsum(:md5, salt)
  end
  def to_sha1(salt = "")
    hashsum(:sha1, salt)
  end
  def to_sha2(salt = "")
    hashsum(:sha2, salt)
  end
  def to_sha256(salt = "")
    hashsum(:sha256, salt)
  end
  def to_sha384(salt = "")
    hashsum(:sha384, salt)
  end
  def to_sha512(salt = "")
    hashsum(:sha512, salt)
  end
end