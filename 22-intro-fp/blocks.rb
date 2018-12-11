## Here is some code that shouldn't surprise you...

nums = [1,2,3,4,5]

### Map
doubled = nums.map {|i| i * 2 }

### Which would be
def map_by_hand(nums)
  new_nums = []
  nums.each do |i|
     new_nums << i * 2
  end
  new_nums
end

### Select
evens = nums.select {|i| i % 2 == 0}

### Which would be
def select_by_hand(nums)
  new_nums = []
  nums.each do |i|
    new_nums << i if i % 2 == 0
  end
  new_nums
end

### Inject
total = nums.inject {|total, x| total + x}

### Which would be
def inject_by_hand(nums)
  result = nil
  nums.each do |i|
    result = result.nil? ? i : result + i
  end
  result
end

### Question: What can we use to write methods that take a block?








### Answer: Yield! Blocks are _basically_ anonymous functions in Ruby.
