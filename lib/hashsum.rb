# @author Francesco Russo
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
  # Encrypt a String with an algorithm and a salt if you want more security
  # hashsum(hash, salt = "")
  def hashsum(hash, salt = "")
    HASH[hash].hexdigest(salt+self)
  end
  # Encrypt a String with MD5 and a salt if you want more security
  # to_md5(salt = "")
  def to_md5(salt = "")
    hashsum(:md5, salt)
  end
  # Encrypt a String with SHA1 and a salt if you want more security
  # to_sha1(salt = "")
  def to_sha1(salt = "")
    hashsum(:sha1, salt)
  end
  # Encrypt a String with SHA2 and a salt if you want more security
  # to_sha2(salt = "")
  def to_sha2(salt = "")
    hashsum(:sha2, salt)
  end
  # Encrypt a String with SHA256 and a salt if you want more security
  # to_sha256(salt = "")
  def to_sha256(salt = "")
    hashsum(:sha256, salt)
  end
  # Encrypt a String with SHA384 and a salt if you want more security
  # to_384(salt = "")
  def to_sha384(salt = "")
    hashsum(:sha384, salt)
  end
  # Encrypt a String with SHA512 and a salt if you want more security
  # to_sha512(salt = "")
  def to_sha512(salt = "")
    hashsum(:sha512, salt)
  end
end