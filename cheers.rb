#my solution

puts "Hello, what's your name?"
name = gets.upcase.strip
puts "Hello, #{name}!!!"
# what I want is "Hello #{name}" with emphasis
vowels = ['A','E','I','O']
if name == ""
  puts "You failed to give a name!"
end
name.each_char { |x|
  if vowels.include?(x)
    puts "Give me an #{x}!"
  elsif !vowels.include?(x)
    puts "Give me a #{x}!"
  end
}
puts "#{name} is GRAND!"



#solution given in class


def ask_for_name
  puts "Hello, what's your name?"
  gets.chomp.upcase
end
name = ""
while name.empty?
  name = ask_for_name
end
name.gsub!(/[^\w]/, "")
an_letters = "AEFHILMNORSX"
name.each_char do |x|
  article = an_letters.include?(x) ? "an" : "a"
  puts "Give me #{article}... #{letter}!"
end
puts "#{name}'s just GRAND!"
