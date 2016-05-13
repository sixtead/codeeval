def stupid_sort(array, iterations = -1)
  index = 0
  iter = 0
  until index == array.length - 1
    break if iter == iterations
    if array[index] > array[index + 1]
      array[index], array[index + 1] = array[index + 1], array[index]
      iter += 1
      index = 0
    else
      index += 1
    end
  end
  array
end

File.read(ARGV[0]).each_line do |line|
  arr = line.split(' | ')[0].split(' ').map(&:to_i)
  iterations = line.chomp.split(' | ')[1].to_i

  puts stupid_sort(arr, iterations).join(' ')
end
