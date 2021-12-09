

module MyEnumerable
  
  def all
    for item in @list
      if !yield(item)
        return false
      end
    end
    return true
  end

end