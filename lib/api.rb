require "HTTParty"
require 'pry'

class API
  
  def self.get_jobs(choice)
   @job_hash = HTTParty.get("https://jobs.github.com/positions.json?description=#{choice}")
   @job_hash.each {|job|
     
     Jobs.new(job)}
   
   #@job_hash.each do |job|
   #  job.each do |k,v|
   #  
   #  binding.pry
   # #puts k["title"]
   #  job_obj = {
   #  title: k["title"],
   #  location: k["location"],
   #  company: k["company"],
   #  type: k["type"],
   #  company_url: k["company_url"],
   #  description: k["description"],
   #  how_to_apply: k["how_to_apply"]
   #  }
   #  
   ## binding.pry
   # end 
   #end 
   
     
  # binding.pry
   #job_obj = {
   #  title: @job_hash[0]["title"],
   #  location: @job_hash[0]["location"],
   #  company: @job_hash[0]["company"],
   #  type: @job_hash[0]["type"],
   #  company_url: @job_hash[0]["company_url"],
   #  description: @job_hash[0]["description"],
   #  how_to_apply: @job_hash[0]["how_to_apply"]
     #
   
   #binding.pry
  end   
end
    