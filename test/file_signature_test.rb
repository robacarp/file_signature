# -*- coding: utf-8 -*-
#
# to run test:
#  - gem install minitest
#  - from gem root directory:
#    - `ruby test/file_signature_test.rb`
#

$LOAD_PATH << File.expand_path("#{File.dirname(__FILE__)}/../lib")

require 'minitest/autorun'
require 'file_signature'

describe File do

  FILE_TO_MAGIC_NUMBER_MAP = {
    'sample.fit' => :fits,
    'sample.gif' => :gif,
    'sample.jpg' => :jpeg,
    'sample.png' => :png,
    'sample.ps' => :postscript,
    'sample.ras' => :sun_rasterfile,
    'sample.sgi' => :iris_rgb,
    'sample.tiff' => :tiff,
    'sample.xcf.bz2' => :bzip,
    'sample.xcf.gz' => :gzip,
    'sample.mp3' => :mp3,
    'sample.mp4' => :mp4,
    'sample.m4a' => :m4a,
    'sample.m4v' => :m4v,
    'sample.mov' => :quicktime,
    'sample.ogg' => :ogg,
    'sample.webm' => :webm,
    'sample.pdf' => :pdf,
    'sample.wav' => :wave,
    'sample.flac' => :flac,
    'sample.aif' => :aiff,
  }

  FILE_TO_MAGIC_NUMBER_MAP.each_pair do |file_name, type|
    path = File.join("test","file_signature_test",file_name)

    it "guesses the expected magic number type by filename and path for #{type.to_s}" do
      File.magic_number_type(path).must_equal type
    end

    f = File.open(path)

    it "when called from an IO object for #{type.to_s}" do
      f.magic_number_type.must_equal type
    end

    it "when called from an IO object...a second time for #{type.to_s}" do
      #test it twice for the memo
      f.magic_number_type.must_equal type
    end

  end
end
