require "HTTParty"
require 'pry'

require_relative '../lib/jobs'
class API
  
  def get_data(choice)
   response = HTTParty.get("https://jobs.github.com/positions.json?description=#{choice}&page=1")
   puts "your choice of #{choice} was received in the API class. "
   response[0] #.each do |hash| 
    # Jobs.new.title  
  end
puts "Hi I'm for api class.  Making sure i'm working"
binding.pry

def get_jobs
  #_________NOTES________________________________________
  # this works
  # response[0]["type"] #=> "full time"
  # ruby[0].each { |x,y| puts y} #=> gives me all the values for id, type,title etc...
  # ruby[0].each { |x,y| puts x} gives  all the keys only id, type, title ALL 11 KEYS
  #_________________________________________________
  ### GIVE USER FIRST 10 TITLES , Company, Location
  
  #responsibe for instantiating #Get_Data and giving it correct
  # :id, :type, :url, :created_at, :company,
  #:company_url, :location, :title, :description, :how_to_apply,
  #Maybe use :title, :company, :location
end

def make_jobs
  #in charge of  Instantiating  Job objects and offer more details about
  # the jobs like :descripton, and how_to_apply
end

  
end
