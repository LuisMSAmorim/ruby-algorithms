def bubble_sort(array)
  array_size = array.length

  (0...array_size).each do |i|
    unsorted_array_size = (array_size - i - 1)

    (0...unsorted_array_size).each do |j|
      left = array[j]
      right = array[j + 1]
      if left > right
        array[j] = right
        array[j + 1] = left
      end
    end
  end
  array
end

puts "Enter your array values separeted by commas (43, 2, 60, 10): "
unsorted_array = gets.chomp.split(', ').map(&:to_i)

puts "Unsorted Array: [#{unsorted_array.join(', ')}]"
puts "Sorted Array: #{bubble_sort(unsorted_array.dup)}"
