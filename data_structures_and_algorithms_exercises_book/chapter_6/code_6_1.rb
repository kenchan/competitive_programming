N = 8
a = [3, 5, 8, 10, 14, 17, 21, 39]

def binary_search(array, i)
  left = 0
  right = array.size - 1

  while left <= right
    middle = left + (right - left) / 2
    if array[middle] < i
      left = middle + 1
    elsif i < array[middle]
      right = middle - 1
    else
      return middle
    end
  end
  return -1
end

def lower_bound(array, i)
  left = 0
  right = array.size - 1

  while left <= right
    middle = left + (right - left) / 2
    if array[middle] < i
      left = middle + 1
    elsif i < array[middle]
      right = middle - 1
    else
      return middle
    end
  end
  return right + 1
end

def binary_search_2(array, i)
  left = 0
  right = array.size - 1

  while 1 < (right - left)
    middle = left + (right - left) / 2
    if i <= array[middle]
      right = middle
    else
      left = middle
    end
  end
  return right
end

puts binary_search(a, 8)
puts lower_bound(a, 8)
puts binary_search_2(a, 10)
puts binary_search_2(a, 7)
