def linear_search(array, target_element)
  array.each_with_index do |element, index|
    return index if element == target_element
  end

  -1
end

puts "Enter your array values separeted by commas (1, random_string, 60, abcde): "
array = gets.chomp.split(', ')

puts "Enter the value you want to search for: "
target_element = gets.chomp.to_s

puts "The index of the target element is: #{linear_search(array, target_element)}"
