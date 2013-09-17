require 'test/unit'
require 'hashsum'

class HashsumTest < Test::Unit::TestCase
  def test_sha1
    assert_equal "0beec7b5ea3f0fdbc95d0dd47f3c5bc275da8a33",
      "foo".hashsum(:sha1)
  end

  def test_md5
    assert_equal "acbd18db4cc2f85cedef654fccc4a4d8",
      "foo".hashsum(:md5)
  end

  def test_sha2
    assert_equal "2c26b46b68ffc68ff99b453c1d30413413422d706483bfa0f98a5e886266e7ae",
      "foo".hashsum(:sha2)
  end

  def test_sha256
    assert_equal "2c26b46b68ffc68ff99b453c1d30413413422d706483bfa0f98a5e886266e7ae",
      "foo".hashsum(:sha256)
  end

  def test_sha384
    assert_equal "98c11ffdfdd540676b1a137cb1a22b2a70350c9a44171d6b1180c6be5cbb2ee3f79d532c8a1dd9ef2e8e08e752a3babb",
      "foo".hashsum(:sha384)
  end

  def test_sha512
    assert_equal "f7fbba6e0636f890e56fbbf3283e524c6fa3204ae298382d624741d0dc6638326e282c41be5e4254d8820772c5518a2c5a8c0c7f7eda19594a7eb539453e1ed7",
      "foo".hashsum(:sha512)
  end
end