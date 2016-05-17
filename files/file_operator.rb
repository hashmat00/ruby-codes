require_relative('file_reader')
require_relative('csv_reader')
require_relative 'yaml_reader'
require_relative 'json_reader'

# FileReader.new(ARGV[0]).read
# CsvReader.new('file.csv').read
# YamlReader.new('file.yml').read
# JsonReader.new(ARGV[0]).read
FILENAME = ARGV[0]
def file_extension(filename)
    filename.split('.').last
end

def file_reader
    ext = file_extension(FILENAME)
    return CsvReader if ext == 'csv'
    return YamlReader if ext == 'yml'
    return JsonReader if ext == 'json'
    FileReader
end

file_reader.new(FILENAME).read


