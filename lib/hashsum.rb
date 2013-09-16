class String
  def to_md5(salt = "")
    Digest::MD5.hexdigest(salt+self)
  end
  def to_sha1(salt = "")
    Digest::SHA1.hexdigest(salt+self)
  end
  def to_sha2(salt = "")
    Digest::SHA2.hexdigest(salt+self)
  end
end