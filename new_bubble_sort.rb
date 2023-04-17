require 'pry-byebug'

def bubble_sort(array)
  sorted = false
  array_length = array.length
  while sorted == false
    sorted = true
    for i in (0...array_length - 1)
      if array[i] > array[i + 1]
        array[i], array[i + 1] = array[i + 1], array[i]
        sorted = false
      end
    end
    array_length -= 1
    binding.pry
    break if sorted
  end
  array
end

to_swap = [4, 3, 78, 2, 0, 2]

p bubble_sort(to_swap)
