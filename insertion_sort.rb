def insertion_sort(array)
  array_size = array.length

  for i in 1..(array_size - 1)
    key = array[i]
    j = i - 1

    while j >= 0 && array[j] > key

      array[j + 1] = array[j]

      j -= 1
    end

    array[j + 1] = key
  end
  array
end


puts "Enter your array values separeted by commas (43, 2, 60, 10): "
unsorted_array = gets.chomp.split(', ').map(&:to_i)

puts "Unsorted Array: [#{unsorted_array.join(', ')}]"
puts "Sorted Array: #{insertion_sort(unsorted_array.dup)}"
