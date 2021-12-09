require './enumerable'

class MyList
  include MyEnumerable
  def initialize(*args)
    @list = args
  end
end
