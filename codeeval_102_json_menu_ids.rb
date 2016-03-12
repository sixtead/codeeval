File.open(ARGV[0]).each_line do |line|
  next if line.chomp.empty?

  puts line.chomp.scan(/\"id\":\s(\d+)\,\s\"label\"/).flatten.map(&:to_i).inject(0, :+)
end
