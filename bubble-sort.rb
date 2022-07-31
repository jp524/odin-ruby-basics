def bubble_sort(array)
  loop do 
    swapped = false

    for i in 0...array.length - 1
      if array[i] > array[i + 1]
        array[i], array[i + 1] = array[i + 1], array[i]
        swapped = true
      end
    end

    break if not swapped
  end
  p array
end

bubble_sort([4,3,78,2,0,2])