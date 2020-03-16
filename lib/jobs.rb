class Jobs
  #MAY NOT NEED THIS CLASS> MIGHT DO EVERYTHING CLI CLASS
  attr_accessor :id, :type, :url, :created_at, :company, :company_url, :location, :title, :description, :how_to_apply, :company_logo
  
  @@all = []
  
  
  
  def initialize(hash)
    
    hash.each {|key, value| self.send(("#{key}="), value)}
    save
  end
  
  def self.all
    @@all
  end
  
   def save
     @@all << self 
  end 
  
  def self.destroy_all
    @@all.clear 
  end 
  
end
