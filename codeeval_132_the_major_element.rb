File.read(ARGV[0]).each_line do |line|
  numbers = line.chomp.split(',')
  half_count = numbers.count / 2
  major_element = 'None'
  numbers.uniq.map do |element|
    major_element = element if numbers.count(element) > half_count
  end
  puts major_element
end
