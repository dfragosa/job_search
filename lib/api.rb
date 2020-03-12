require 'pry'
class API
  
  def self.get_data(choice)
   
   response = HTTParty.get("https://jobs.github.com/positions.json?description=#{choice}&page=1")
   binding.pry
   response[0] #.each do |hash| 
    jobs_search.new.title
   #end
  binding.pry
  end
puts "Hi I'm for api class.  Making sure i'm working"
binding.pry
  
end
