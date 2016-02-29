File.open(ARGV[0]).each_line do |line|
  next if line.chomp.empty?

  sum = 0
  line.each_char { |chr| sum += chr.to_i }
  puts sum
end
