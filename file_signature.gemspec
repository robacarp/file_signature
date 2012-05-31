Gem::Specification.new do |s|

  s.name              = "file_signature"
  s.summary           = "File signature inspects the first few bytes of a file to guess at mime-type."
  s.version           = "1.1.0"
  s.authors           = ["SixArm", "robacarp"]
  s.email             = "coder@robacarp.com"
  s.homepage          = "robacarp.com"

  s.platform          = Gem::Platform::RUBY
  s.require_path      = 'lib'
  s.has_rdoc          = true

  CLASSES             = []
  TESTERS             = [
                         'sample.fit',
                         'sample.gif',
                         'sample.jpg',
                         'sample.png',
                         'sample.ps',
                         'sample.ras',
                         'sample.sgi',
                         'sample.tiff',
                         'sample.xcf.bz2',
                         'sample.xcf.gz'
                       ]

  top_files           = [".gemtest", "Rakefile", "README.md", "VERSION"]
  lib_files           = ["lib/#{s.name}.rb"]
  test_files          = ["test/#{s.name}_test.rb"] + TESTERS.map{|x| "test/#{s.name}_test/#{x}_test.rb"}

  s.files             = top_files + lib_files + test_files
  s.test_files        = test_files
end
