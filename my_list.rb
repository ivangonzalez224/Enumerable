require './my_enumerable'

class MyList
  include MyEnumerable
  def initialize(*objects)
    @list = objects
  end

  def each(&block_arg)
    @list.each(&block_arg)
  end
end

list = MyList.new(1, 2, 3, 4)
puts(list.all? { |e| e < 5 })
puts(list.all? { |e| e > 5 })
puts(list.any? { |e| e == 2 })
puts(list.any? { |e| e == 5 })
puts(list.filter(&:even?))
