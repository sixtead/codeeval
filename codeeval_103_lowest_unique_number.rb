File.open(ARGV[0]).each_line do |line|
  next if line.chomp.empty?

  numbers = line.chomp.split(' ')
  minimum_count_numbers = []
  numbers.uniq.each do |chr|
    minimum_count_numbers << chr if numbers.count(chr) == 1
  end

  winner_number = minimum_count_numbers.map(&:to_i).min
  puts winner_number.nil? ? 0 : numbers.index(winner_number.to_s) + 1
end
