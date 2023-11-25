dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(string, dictionary)
  hash = {}
  word_array = string.split(" ")
  dictionary.each {|value| hash[value] = 0}
  dictionary.each do
    |dictionary_word|
    word_array.each do
      |string_word| 
    if string_word.include?(dictionary_word)
      hash[dictionary_word] += 1
    end
  end
  end
  hash = hash.select {|key, value| value >= 1}
  if hash.empty?
    puts "No sub-strings of the given string found in the passed dictionary!"
  else
  puts hash
  end
end

puts "Enter a string to find out how many sub-string matches you have with a passed dictionary."
string = gets.chomp

substrings(string, dictionary)