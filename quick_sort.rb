def quick_sort(array)
  return array unless array.size > 1

  pivot = array[0]

  left = []
  right = []

  left = array[1..].select { |el| el < pivot }
  right = array[1..].select { |el| el >= pivot }

  quick_sort(left) + [pivot] + quick_sort(right)
end

puts "Enter your array values separeted by commas (43, 2, 60, 10): "
unsorted_array = gets.chomp.split(', ').map(&:to_i)

puts "Unsorted Array: [#{unsorted_array.join(', ')}]"
puts "Sorted Array: #{quick_sort(unsorted_array.dup)}"
