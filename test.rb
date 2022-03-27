require './file_reader'
require './file_writer'
require './sorter'

items = read_file
sorted_items = sort_items(items)
formated_output = format_output(sorted_items)
write_file(formated_output)