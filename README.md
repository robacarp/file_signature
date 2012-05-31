* Docs: <http://sixarm.com/sixarm_ruby_magic_number_type/doc>
* Repo: <http://github.com/robacarp/file_signature>
* Email: Joel Parker Henderson, <joel@sixarm.com>
* Email: Robert Carpenter, <coder@robacarp.com>


## Introduction


Magic numbers are the first bits of a file or data stream which uniquely identify the type of file or data stream.

For example when the first bits are "BM", this identifies the file as a bitmap image file.

For docs go to <http://sixarm.com/sixarm_ruby_magic_number_type/doc>

Want to help? We're happy to get pull requests.


## Install quickstart

Install:

    gem install file_signature

Bundler:

    gem "file_signature", "~>1.0.0"

Require:

    require "file_signature"

## Details

This gem infers based on widespread programming conventions for data file formats.

These magic numbers are by convention and we are using this guide: http://www.astro.keele.ac.uk/oldusers/rno/Computing/File_magic.html

Typical uses of magic numbers:

  * quickly guess at a file's mime type
  * check if data matches the file's MIME type or extension
  * check if a web form file upload matches its HTTP content type

Compare:

  * MIME::Types ruby library 
  * Unix magic() command for testing files on disk
  * http://shared-mime.rubyforge.org/


## Changes

* 2012-03-14 1.0.0 Update docs, tests

## License

You may choose any of these open source licenses:

  * Apache License
  * BSD License
  * CreativeCommons License, Non-commercial Share Alike
  * GNU General Public License Version 2 (GPL 2)
  * GNU Lesser General Public License (LGPL)
  * MIT License
  * Perl Artistic License
  * Ruby License

The software is provided "as is", without warranty of any kind, 
express or implied, including but not limited to the warranties of 
merchantability, fitness for a particular purpose and noninfringement. 

In no event shall the authors or copyright holders be liable for any 
claim, damages or other liability, whether in an action of contract, 
tort or otherwise, arising from, out of or in connection with the 
software or the use or other dealings in the software.

This license is for the included software that is created by SixArm;
some of the included software may have its own licenses, copyrights, 
authors, etc. and these do take precedence over the SixArm license.

Copyright (c) 2005-2012 Joel Parker Henderson
