
require "job_search/version"

## This is your enviroment file interface
#load all the files needed to run app

module JobSearch
  class Error < StandardError; end
  # Your code goes here...
end

require_all 'lib'
