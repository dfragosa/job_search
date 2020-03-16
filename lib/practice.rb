puts " What would you like the program to do? Type: Talk,Listen or Nothing"

choice = Object.new
def choice.talk
puts " I'm not much of a talker but I will try."
end

def choice.listen
puts " Speak, I'm here for you."
end


def choice.exit
puts " Thank you have a great day."
end

request = gets.chomp.strip.downcase


if choice.respond_to?(request)
puts choice.send(request)
elsif choice.nil?
puts " Please type a language or exit."
end

#if job_hash.include?(ruby)  puts job_hash
#  if job_has.include?(python) puts job_hash