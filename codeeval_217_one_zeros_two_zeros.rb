File.read(ARGV[0]).each_line do |line|
  n_of_zeroes = line.chomp.split(' ')[0].to_i
  n_of_numbers = line.chomp.split(' ')[1].to_i

  numbers = []
  1.upto(n_of_numbers) do |i|
    numbers << i.to_s(2) if i.to_s(2).count('0') == n_of_zeroes
  end

  puts numbers.length
end
