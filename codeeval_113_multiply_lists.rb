File.read(ARGV[0]).each_line do |line|
  first_array = line.chomp.split(' | ')[0].split(' ')
  second_array = line.chomp.split(' | ')[1].split(' ')
  result_array = []

  first_array.zip(second_array) do |first_array_elem, second_array_elem|
    result_array << first_array_elem.to_i * second_array_elem.to_i
  end

  puts result_array.join(' ')
end
