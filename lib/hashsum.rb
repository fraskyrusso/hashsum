require 'digest'
# @author Francesco Russo
class String
  # Encrypt a String with an algorithm and a salt if you want more security
  def hashsum(hash, salt = "")
    Digest::MD5.hexdigest(salt+self) if hash == :md5
    Digest::SHA1.hexdigest(salt+self) if hash == :sha1
    Digest::SHA2.hexdigest(salt+self) if hash == :sha2
    Digest::SHA256.hexdigest(salt+self) if hash == :sha256
    Digest::SHA384.hexdigest(salt+self) if hash == :sha384
    Digest::SHA512.hexdigest(salt+self) if hash == :sha512
  end
  # Encrypt a String with MD5 and a salt if you want more security
  def to_md5(salt = "")
    hashsum(:md5, salt)
  end
  # Encrypt a String with SHA1 and a salt if you want more security
  def to_sha1(salt = "")
    hashsum(:sha1, salt)
  end
  # Encrypt a String with SHA2 and a salt if you want more security
  def to_sha2(salt = "")
    hashsum(:sha2, salt)
  end
  # Encrypt a String with SHA256 and a salt if you want more security
  def to_sha256(salt = "")
    hashsum(:sha256, salt)
  end
  # Encrypt a String with SHA384 and a salt if you want more security
  def to_sha384(salt = "")
    hashsum(:sha384, salt)
  end
  # Encrypt a String with SHA512 and a salt if you want more security
  def to_sha512(salt = "")
    hashsum(:sha512, salt)
  end
end