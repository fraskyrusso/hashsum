require 'date'

Gem::Specification.new do |s|
  s.name        = "hashsum"
  s.version     = "2.1.6"
  s.executables << "hashsum"
  s.date        = Date.today.to_s
  s.summary     = "Hashsum"
  s.description = "Add hashing methods to String class"
  s.authors     = ["Francesco Russo"]
  s.email       = "fraskyrusso@gmail.com"
  s.files       = ["lib/hashsum.rb"]
  s.homepage    = "http://github.com/fraskyrusso/hashsum"
  s.licenses    = ["MIT", "GPL"]
end