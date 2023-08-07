module Enumerable
  # Your code goes here
  def my_all?()
    for element in self
      if yield(element) == false
        return false
      end
    end

    return true
  end

  def my_any?()
    for element in self
      if yield(element) == true
        return true
      end
    end

    return false
  end

  def my_count()
    if block_given?
      counter = 0
      for element in self
        if yield(element) == true
          counter += 1
        end
      end
      return counter
    else
      return self.length
    end
  end

  def my_each_with_index()
    if block_given?
      i = 0
      for element in self
        yield(element, i)
        i += 1
      end
    end

    return self
  end

  def my_inject(number)
    for element in self
      number = yield(number, element)
    end

    return number
  end

  def my_map()
    mapped_array = []

    for element in self
      mapped_array.push(yield(element))
    end

    return mapped_array
  end

  def my_none?()
    for element in self
      if yield(element) == true
        return false
      end
    end

    return true
  end

  def my_select()
    selected = []

    for element in self
      if yield(element) == true
        selected.push(element)
      end
    end

    return selected
  end
end

# You will first have to define my_each
# on the Array class. Methods defined in
# your enumerable module will have access
# to this method
class Array
  # Define my_each here
  def my_each()
    if block_given?
      for element in self
        yield(element)
      end
    end

    return self
  end
end
