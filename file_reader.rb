def read_file
  input_file = File.expand_path('./input.txt', __dir__)

  result = []

  File.open(input_file).each do |line|
    next if line.strip == 'ITEM,ID,PARENT'
    item, id, parent = line.strip.split(',')
    parent = nil if parent == 'nil'
    result << {item: item, id: id, parent: parent, children: []}
  end

  result
end
