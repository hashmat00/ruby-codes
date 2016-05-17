require 'yaml'
require_relative 'file_reader'

class YamlReader < FileReader
    
    def read
    puts "This is Yaml file reader"
    
    content = YAML.load_file(@file)
    puts content
    end
end

