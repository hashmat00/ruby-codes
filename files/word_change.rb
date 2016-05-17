FILENAME = ARGV[0]

WORD_CHANGE = ARGV[1]

NEW_WORD = ARGV[2]

def change_word
    #read file name
    content = File.read(FILENAME)
    #get word and change with new word
    content = content.gsub(Regexp.new('\b'+WORD_CHANGE.capitalize +'\b'), NEW_WORD)
    
   
   #open file and write new word and save it
    File.open(FILENAME, "w") do |f|
        f << content
    end
    
end


change_word
