puts "Hello, what's your name?"
name = gets.upcase.strip
puts "Hello, #{name}!!!"
# what I want is "Hello #{name}" with emphasis
vowels = ['A','E','I','O','U']
puts "What did you say your name was?"
name = gets.upcase.strip
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
