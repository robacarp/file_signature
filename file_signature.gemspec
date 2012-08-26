Gem::Specification.new do |s|

  s.name              = "file_signature"
  s.summary           = "File signature adds the ability to inspect the first few bytes of a file to guess at mime-type."
  s.description       = "Monkeypatches File and IO to include a '''magic_number_type''' method which returns a symbol, and a '''mime_type''' method which returns a string, representing the mime type guessed."
  s.version           = "1.2.0"
  s.authors           = ["distler","robacarp","SixArm"]
  s.email             = "distler@golem.ph.utexas.edu"
  s.homepage          = "http://github.com/distler/file_signature"

  s.platform          = Gem::Platform::RUBY
  s.require_path      = 'lib'

  CLASSES             = []
  TESTERS             = [
                           'sample.fit',
                           'sample.gif',
                           'sample.jpg',
                           'sample.png',
                           'sample.jp2',
                           'sample.webp',
                           'sample.mid',
                           'sample.ps',
                           'sample.ras',
                           'sample.sgi',
                           'sample.tiff',
                           'sample.rar',
                           'sample.xcf.bz2',
                           'sample.xcf.gz',
                           'sample.xcf.zip',
                           'sample.xcf.7z',
                           'sample.tar',
                           'sample.tar.gz',
                           'sample.xcf.Z',
                           'sample.ppt',
                           'sample2.ppt',
                           'sample.pptx',
                           'sample.xls',
                           'sample2.xls',
                           'sample.xlsx',
                           'sample.ico',
                           'sample.mp3',
                           'sample.mp4',
                           'sample.m4a',
                           'sample.m4v',
                           'sample.mov',
                           'sample.ogg',
                           'sample.spx',
                           'sample.webm',
                           'sample.avi',
                           'sample.3gp',
                           'sample.3g2',
                           'sample.m3u8',
                           'sample.fig',
                           'sample.xcf',
                           'sample.exe',
                           'sample.bc',
                           'sample.bmp',
                           'sample.xpm',
                           'sample.doc',
                           'sample2.doc',
                           'sample.pdf',
                           'sample.rtf',
                           'sample.jar',
                           'sample.wav',
                           'sample.flac',
                           'sample.aif',
                           'sample.elf',
                           'sample.gpg',
                           'sample.pubring.gpg',
                           'sample.skr',
                           'sample.sh'
                       ]

  top_files           = [".gemtest", "Rakefile", "README.md", "VERSION"]
  lib_files           = ["lib/#{s.name}.rb"]
  test_files          = ["test/#{s.name}_test.rb"] + TESTERS.map{|x| "test/#{s.name}_test/#{x}"}

  s.files             = top_files + lib_files + test_files
  s.test_files        = test_files
end
