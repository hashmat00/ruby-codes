FILENAME = ARGV[0]
 
WORD_TO_COUNT = ARGV[1]
 
def count_words
  # Read contents of file into a string
  contents = File.read(FILENAME)
 
  # Remove punctuation and newlines, and convert string to lowercase
  contents = contents.gsub(/[^a-z0-9\s]/i, ' ')
  contents = contents.gsub(/\n/, ' ')
  contents.downcase!

 
#   # Split string into words
    words = contents.split(' ')
 
#   # Count the number of times the word appears in the array
    count = contents.count(WORD_TO_COUNT.downcase)

 
  puts "The number of times '#{WORD_TO_COUNT}' appears in #{FILENAME} is #{count}."
end
 
# Call the word counting method
count_words