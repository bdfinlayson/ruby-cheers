#my solution to PT 1

class Greetings
  def hello
    return "Hey! How's everything? Damn, what did you say your name was? I forgot!"
  end
  def notName
    return "What you wrote is not a name. Let's try this again. What did you say your name was?"
  end
  def birthday
    return "what's your birthday"
  end
  def notBirthday
    return "That doesn't sound right. What did you say your birthday was again?"
  end
  def nameAgain
    return "Boo-Yeah! Do you want me to give you a shoutout? If not, just say \"NO!\""
  end
  def noProblem
    return "Okay, no sweat!"
  end
end

class Response
  def initialize(response)
    @response = response
  end
  def set(response)
    @name = response
  end
  def get
    return @response
  end
end

class UserName
  def initialize(name)
    @name = name
  end
  def set(name)
    @name = name
  end
  #  def checkName(name)
  #    @name = name
  #       while @name == "" || @name[/[0-9]/] do
  #      puts "Sorry, what you said was #{@name}. That is not a vaild name. Please state your name."
  #      @name = UserName.new(gets.strip.upcase)
  #    end
  #  end
  def get
    return @name
  end
end

class Birthday
  def initialize(birthday)
    @birthday = birthday
  end
  def set(birthday)
    @birthday = birthday
  end
  def get
    return @birthday
  end
end

class Response
  def initialize(response)
    @response = response
  end
  def set(response)
    @response = response
  end
  def get
    return @response
  end
end

greetings = Greetings.new

#Program starts here
puts greetings.hello

username = UserName.new(gets.strip.upcase)

while username.get == "" || username.get[/[0-9]/] do
  puts "Sorry, what you said was #{username.get}. That is not a vaild name. Please state your name."
  username = UserName.new(gets.strip.upcase)
end

puts greetings.nameAgain
response = Response.new(gets.strip.upcase)

if response.get[/(YES)/]
  vowels = ['A','E','I','O']
  username.get.each_char { |x|
    if vowels.include?(x)
      puts "Give me an #{x}!"
    elsif !vowels.include?(x)
      puts "Give me a #{x}!"
    end
  }
    puts "#{username.get} is GRAND!"
else
  puts greetings.noProblem
end

puts "But, now since you've given me your name, #{username.get}, why don't you tell me your birthday, too?"

birthday = Birthday.new(gets.strip)

puts "Did you say your birthday was #{birthday.get}?"

#class Cheers
#
#  def bdayValid?(year, month, day)
#    require 'date'
#    return Date.valid_date?(year,month,day)
#  end
#
#  def ask_for_birthday
#    #gets user's birthday
#    @birthday = puts "What is your birthday (MM/DD/YYYY)?"
#    gets.strip
#    #keeps asking until a vaild date is given
#    while birthday.empty?
#      birthday = ask_for_birthday
#    end
##    #if the input format was incorrect, asks for bday again
#    while birthday.strip.split('').length < 2 ||  birthday.split('/')[2].length != 4
#      puts "#{birthday}"
#      birthday = ask_for_birthday
#    end
#  end
#
#  def ask_for_name
##    puts "Hello, what's your name?"
#    @name = gets.upcase.strip
#    puts "Hello, #{name}!!!"
#  end
#  @name = ask_for_name
#
#  def shoutOut
#    # what I want is "Hello #{name}" with emphasis
#    vowels = ['A','E','I','O']
#    if @name == ""
#      puts "You failed to give a name!"
#    end
#    @name.each_char { |x|
#      if vowels.include?(x)
#        puts "Give me an #{x}!"
#      elsif !vowels.include?(x)
#        puts "Give me a #{x}!"
#      end
#    }
#    puts "#{name} is GRAND!"
##  end
#
#
#  def parseDate(birthday)
#    @year = birthday.strip.split('/')[2].to_i
#    @month = birthday.strip.split('/')[1].to_i
#    @day = birthday.strip.split('/')[0].to_i
#    if bdayValid?(year,month,day)
#      print "You have a valid bday!"
#    else
#      print "You gave an invalid date!"
#      birthday = ask_for_name
#      parseDate(birthday)
#    end
#  end
#
#
#  puts "Your birthday is #{@birthday}! You were born in #{@year}"
##
#end
##


#Solution to P1 as given by teacher in class
#  puts "Hello, what's your name?"
#  gets.chomp.upcase
#end
#name = ""
#while name.empty?
#  name = ask_for_name
#end
#name.gsub!(/[^\w]/, "")
#an_letters = "AEFHILMNORSX"
#name.each_char do |x|
#  article = an_letters.include?(x) ? "an" : "a"
#  puts "Give me #{article}... #{letter}!"
#end
#puts "#{name}'s just GRAND!"
