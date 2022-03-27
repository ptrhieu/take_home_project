def write_file(output_string)
  output_file = File.expand_path('./output.txt', __dir__)

  result = []

  File.open(output_file, 'w') do |file|
    file.write(output_string)
  end
end
