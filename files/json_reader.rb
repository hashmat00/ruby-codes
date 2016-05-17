
require 'json'

require_relative 'file_reader'

class JsonReader < FileReader


    
    def read
        puts "This is json file reader"
        
        json = File.read(@file)
        content = JSON.load(json)
        puts content
        
        
    end
    
    
end