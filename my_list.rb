require_relative 'my_enumerable'

## Declaring MyList class
class MyList
  include MyEnumerable

  def initialize(*list)
    @list = list
  end

  def each(&block)
    @list.each do |item|
      block.call(item)
    end
  end
end

# Verify solution:
# Create our list
list = MyList.new(1, 2, 3, 4)

# Test #all?
puts(list.all? { |e| e < 5 })
# true
puts(list.all? { |e| e > 5 })
# false

# Test #any?
puts(list.any? { |e| e == 2 })
# true
puts(list.any? { |e| e == 5 })
# false

# Test #filter
print(list.filter(&:even?))
# [2, 4]
