sum = 0

File.open(ARGV[0]).each_line do |line|
  next if line.chomp.empty?
  sum += line.to_i
end

puts sum
