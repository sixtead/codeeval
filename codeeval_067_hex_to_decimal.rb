File.open(ARGV[0]).each_line do |line|
  next if line.chomp.empty?
  puts line.chomp.to_i(16).to_s(10)
end
