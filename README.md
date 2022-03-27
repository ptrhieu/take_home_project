## Dependencies
- ruby

## How to run

- put your input in the file `input.txt`
- run `ruby ./test.rb`
- output will be in `output.txt`

## explain the solution
- first we read the input file line by line then parse them into an array of items, which are in format of hash. eg: `{id: 1, item: 'Mercury', parent: 2, children: []}`. Here we have an additional attribute called `children`, which will be used to contain the list of the children of this item after items being sorted
- then we sort the items:
  + items with no parent will be in the highest level of the hierarchy, so they will be sorted first
  + then we loop over the remanining items for level 2, which are the children of the first level.
  + then we continue sorting on the remaining items for level 3, and so on, until there's no items left
- then we format the sorted items into an output string using the recusive method `format_output`.
- finally, we write the output string to the file output.txt
