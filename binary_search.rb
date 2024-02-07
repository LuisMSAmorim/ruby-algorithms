def binary_search(array, target_element)
  left, right = 0, array.length - 1

  while left <= right
    middle = (left + right) / 2
    middle_element = array[middle]

    if middle_element == target_element
      return middle
    elsif middle_element < target_element
      left = middle + 1
    else
      right = middle - 1
    end
  end

  -1
end

puts "Enter the first value of the sorted array: "
first_value = gets.chomp.to_i

puts "Enter the last value of the sorted array: "
last_value = gets.chomp.to_i

array = (first_value..last_value).to_a

puts "Enter the value you want to search for: "
target_element = gets.chomp.to_i

puts "The index of the target element is: #{binary_search(array, target_element)}"
