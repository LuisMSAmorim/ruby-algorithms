def merge_sort(array)
  return array unless array.length > 1

  mid = array.length / 2
  left = merge_sort(array[0...mid])
  right = merge_sort(array[mid..-1])

  merge(left, right)
end

def merge(left, right)
  merged = []
  l, r = 0, 0

  while l < left.length && r < right.length
    if left[l] < right[r]
      merged << left[l]
      l += 1
    else
      merged << right[r]
      r += 1
    end
  end

  merged.push(*left[l..-1]) if l < left.length
  merged.push(*right[r..-1]) if r < right.length

  merged
end

puts "Enter your array values separeted by commas (43, 2, 60, 10): "
unsorted_array = gets.chomp.split(', ').map(&:to_i)

puts "Unsorted Array: [#{unsorted_array.join(', ')}]"
puts "Sorted Array: #{merge_sort(unsorted_array.dup)}"