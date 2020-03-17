require 'pry'
#require_relative '../lib/api'

class CLI
  
  def start
    puts "Welcome to your job search."
    puts "Please type for example: ruby, python, java, javascript, swift, c, php"
    choice = gets.strip.chomp.downcase
    puts "Enter where you want to work: example New York, Florida"
    place = gets.strip.chomp.downcase
    load "api.rb"
    @data = API.get_jobs(choice, place)
    @objects = Jobs.all
     output1
  end
  
  def output1
    puts "\t\t\t\t////////////////////////////"
    puts "\t\t\t\t///Here are the results ///"
    puts "\t\t\t\t///////////////////////////"
    @objects.each.with_index(1) do |job, idx|
      puts "#{idx}. #{job.title} \tCompany Name: #{job.company} \tLocation: #{job.location}"
      puts " To see more info"
        #binding.pry
    end 
  end
    
    #choice = ""
    #while choice != "exit"
    #puts "Please type for example: ruby, python, java, javascript, swift, c, php"
    #choice = gets.strip.chomp.downcase
    #puts "Enter where you want to work: example New York, Florida"
    #place = gets.strip.chomp.downcase
    #@data = API.get_jobs(choice, place)
    #@objects = Jobs.all
    #binding.pry
    #  if choice.strip == "exit"
    #    exit
    #  elsif choice.strip == nil? || choice.strip == "" || choice.strip == " "
    #    puts "Please type a language or exit to leave."
    #  else
        #load "api.rb" # in case require not working right
       
  # binding.pry
  #  end
 
  
  def exit
    puts "Good Bye"  
  end
  
    #ruby = HTTParty.get("https://jobs.github.com/positions.json?description=ruby&page=1")
    #python = HTTParty.get("https://jobs.github.com/positions.json?description=python&page=1") 
    #java = HTTParty.get("https://jobs.github.com/positions.json?description=java&page=1") 
    #javascript =  HTTParty.get("https://jobs.github.com/positions.json?description=javascript&page=1") 
    #swift = HTTParty.get("https://jobs.github.com/positions.json?description=swift&page=1") 
    #cplusplus = HTTParty.get("https://jobs.github.com/positions.json?description=c++&page=1") 
    #php = HTTParty.get("https://jobs.github.com/positions.json?description=php&page=1") 
end