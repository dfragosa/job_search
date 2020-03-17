require "HTTParty"
require 'pry'

class API
  
  def self.get_jobs(choice, place)
   @job_hash = HTTParty.get("https://jobs.github.com/positions.json?description=#{choice}&location=#{place}")
   @job_hash.size
   job_obj = {
     title: @job_hash[0]["title"],
     location: @job_hash[0]["location"],
      company: @job_hash[0]["company"]
     }
   load "jobs.rb"
    Jobs.new(job_obj)
   #binding.pry
  end
  
  def self.get_details
   job_details = {
    type: @job_hash[0]["type"],
    company_url: @job_hash[0]["company_url"],
   # description: @job_hash[0]["description"],
    how_to_apply: @job_hash[0]["how_to_apply"]
   }
   load "jobs.rb"
    Jobs.new(job_details)
    binding.pry
  end    
end
    