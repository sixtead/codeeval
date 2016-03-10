File.open(ARGV[0]).each_line do |line|
  next if line.chomp.empty?
  puts line.chomp.to_i.even? ? 1 : 0
end
