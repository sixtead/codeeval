File.open(ARGV[0]).each_line do |line|
  next if line.chomp.empty?
  numbers = line.chomp.split(',')

  unique_numbers = [numbers.first]

  numbers.each do |number|
    if number != unique_numbers.last
      unique_numbers << number
    end
  end
  puts unique_numbers.join(',')
end
