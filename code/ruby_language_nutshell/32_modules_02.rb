
# to include a module that has been specified elsewhere in this code file 
# requires to specify the  file where the module has been specified in;
# this is done by the following command ... 
require_relative "31_modules.rb"

# ... when the file is accessible, the actual module can be included ...
include Tools

# ... and the functionality specified in the module can be used.
Tools.sayhi("jenny")