File.read(ARGV[0]).each_line do |line|
  p line.chomp.scan(/(?=(>>-->)|(<--<<))/).flatten.compact.count
end
