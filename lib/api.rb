require "HTTParty"
require 'pry'

class API
  
  def self.get_jobs
   @job_hash = HTTParty.get("https://jobs.github.com/positions.json?description=ruby&page=1")
   @job_hash[0]
   #binding.pry
   job_obj = {
     title: @job_hash[0]["title"],
     type: @job_hash[0]["type"],
     location: @job_hash[0]["location"],
     company: @job_hash[0]["company"],
     company_url: @job_hash[0]["company_url"],
     description: @job_hash[0]["description"],
     how_to_apply: @job_hash[0]["how_to_apply"]
     
     }
   
   binding.pry
    ### GIVE USER FIRST 10 TITLES , Company, Location
    
    #responsibe for instantiating #Get_Data and giving it correct
    # :id, :type, :url, :created_at, :company,
    #:company_url, :location, :title, :description, :how_to_apply,
    #Maybe use :title, :company, :location
  end
end
a = API.new
API.get_jobs