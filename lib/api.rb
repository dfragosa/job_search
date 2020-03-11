class API
  
  def self.get_data(choice)
   
   response = HTTParty.get("https://jobs.github.com/positions.json?description=#{choice}&page=1")
   binding.pry
   response[0] #.each do |hash| 
    Jobs.new.title
   #end
  binding.pry
  end

  
end
