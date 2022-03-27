require './file_reader'
require './file_writer'

def sort_items(items)
  current_level = []
  previous_level = []
  items.each do |item|
    if item[:parent].nil?
      current_level << item
    end
  end
  root_items = current_level
  remaining_items = items.filter{|item| !current_level.map{|it| it[:id]}.include?(item[:id])}

  while remaining_items.length > 0
    previous_level = current_level
    current_level = []

    remaining_items.each do |item|
      parent = previous_level.find{|parent_item| parent_item[:id] == item[:parent]}
      unless parent.nil?
        parent[:children] << item
        current_level << item
      end
      remaining_items = remaining_items.filter{|item| !current_level.map{|it| it[:id]}.include?(item[:id])}
    end
  end
  root_items
end

def format_output(items, indent = '')
  result = ''
  items.each do |item|
    result += "#{indent}+ #{item[:item]}\n"
    result += format_output(item[:children], '  ' + indent)
  end
  result
end


