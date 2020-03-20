require 'pry'
#require_relative '../lib/api'

class CLI
  
  def start
    choice = ""
    while choice != "exit"
    puts "Welcome to your job search."
    puts"--------------------------------"
    puts "Please type for example: ruby, python, java, javascript, swift, c, php or type exit to leave"
    choice = gets.strip.chomp.downcase
    if choice == "exit"
      exit
    elsif choice.strip == nil? || choice.strip == "" || choice.strip == " "
      choice = gets.strip.chomp.downcase
    else
    load "api.rb"
    @data = API.get_jobs(choice)
   
     output1
    end 
   end
  end
  
  
  def output1
    puts "\t\t\t\t////////////////////////////"
    puts "\t\t\t\t///Here are the results ///"
    puts "\t\t\t\t///////////////////////////"
     @objects = Jobs.all
    @objects.each.with_index do |job, idx|
      puts "#{idx+ 1}. #{job.title} Company Name: #{job.company} Location: #{job.location}"
    end
    
    output2
  end
  
      
  def output2
     puts " Enter the number you want to view more info for: "
     input = gets.chomp.strip.downcase
    if input == "exit"
      exit
      elseif (1..Jobs.all.size).include?(input.to_i)
    end
      puts "-------------------------------------"
      puts "here's the informantion you selected"
      puts " ------------------------------------"
      selected_info = Jobs.all[input.to_i - 1]
     # binding.pry
     puts "Job Type: #{selected_info.type}"
     puts "-----------------------------------"
     puts "\nHow To Apply: #{selected_info.how_to_apply}"
     puts "-----------------------------------"
    puts " \nCompany URL: #{selected_info.company_url}"
  end
      
  def exit
    puts "Good Bye"  
  end
  
  #def all_jobs
  #  Jobs.all  
  #end
  
   
    #choice = ""
    #while choice != "exit"
    
    #  if choice.strip == "exit"
    #    exit
    #  elsif choice.strip == nil? || choice.strip == "" || choice.strip == " "
    #    puts "Please type a language or exit to leave."
    #  else
        #load "api.rb" # in case require not working right
       
  # binding.pry
  #  end  

end