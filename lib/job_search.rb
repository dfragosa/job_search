require "pry"
require_relative '../lib/job_search/version'
require_relative '../bin/executable'
require_relative '../lib/cli' #correct and tested dont change
require_relative '../lib/api' #correc and tested dont change
binding.pry

## This is your enviroment file interface
#load all the files needed to run app

module JobSearch
  class Error < StandardError; end
  # Your code goes here...
end

require_all 'lib'


