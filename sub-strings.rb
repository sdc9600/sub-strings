dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(string, dictionary)
  hash = {}
  dictionary.each {|value| hash[value] = 0}
  dictionary.each do 
    |word|
    if string.include?(word)
      hash[word] += 1
    end
  end
  puts hash
end

puts "Enter a string to find out how many sub-string matches you have with select words."
string = gets.chomp

substrings(string, dictionary)