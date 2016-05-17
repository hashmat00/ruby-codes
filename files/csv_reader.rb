require 'csv'
require_relative 'file_reader'

class CsvReader < FileReader

    
       def read
       puts "Reading the CSV file type"
       
       content = CSV.read(@file)
       puts content
    end

end 


#  x = CsvReader.new('file.csv')
#  x.read