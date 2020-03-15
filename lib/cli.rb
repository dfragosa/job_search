require 'pry'
#require_relative '../lib/api'

class CLI
  
  def start
    puts "Welcome to your job search."
     languages
  end
  
  def languages
    choice = ""
    while choice != "exit"
    puts "Please type for example: ruby, python, java, javascript, swift, cplusplus, php"
    choice = gets.strip.chomp.downcase
      if choice.strip == "exit"
        exit
      elsif choice.strip == nil? || choice.strip == "" || choice.strip == " "
        puts "Please type a language or exit to leave."
      else
        load "api.rb" # in case require not working right
       choice = API.new(choice)
  # binding.pry
      end 
    end
  end
  
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