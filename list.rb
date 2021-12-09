

require './enumerable.rb'

class MyList 
  include MyEnumerable
  def initialize(*args)
    @list = args
  end
end
s
l = MyList.new(1,2,3)
puts l.all { |x| x > 1}


