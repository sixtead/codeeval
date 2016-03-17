File.read(ARGV[0]).each_line do |line|
  next if line.chomp.empty?
  numbers = line.chomp.split(' : ')[0].split(' ')
  swap = line.chomp.split(' : ')[1].scan(/(\d+)(?:-)(\d+)/)

  swap.each do |swap_pair|
    temp = numbers[swap_pair[0].to_i]
    numbers[swap_pair[0].to_i] = numbers[swap_pair[1].to_i]
    numbers[swap_pair[1].to_i] = temp
  end
  # puts line
  puts numbers.join(' ')
end
