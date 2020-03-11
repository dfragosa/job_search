require 'pry'
class Cli
  attr_reader :choice
  
  def choice
    puts "Which programming language would you like to search jobs for?"
    puts "Please type for example: ruby, python, java, javascript, swift, cplusplus, php"
    choice = gets.chomp.
    puts choice
    binding.pry
    binding.irb
  end
  
  def languages(choice)
    ruby = HTTParty.get("https://jobs.github.com/positions.json?description=ruby&page=1")
    python = HTTParty.get("https://jobs.github.com/positions.json?description=python&page=1") 
    java = HTTParty.get("https://jobs.github.com/positions.json?description=java&page=1") 
    javascript =  HTTParty.get("https://jobs.github.com/positions.json?description=javascript&page=1") 
    swift = HTTParty.get("https://jobs.github.com/positions.json?description=swift&page=1") 
    cplusplus = HTTParty.get("https://jobs.github.com/positions.json?description=c++&page=1") 
    php = HTTParty.get("https://jobs.github.com/positions.json?description=php&page=1") 
  end
  puts "Hi I'm from cli class.  Making sure this is working"
end


