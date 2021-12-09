module MyEnumerable
  
  def all
    for item in @list
      if !yield(item)
        return false
      end
    end
    return true
  end

  def any
    for item in @list
      if yield(item)
        return true
      end
    end
    return false
  end

  def filter
    @list.filter {yield}
  end
end