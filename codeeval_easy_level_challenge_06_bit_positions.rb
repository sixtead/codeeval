File.open(ARGV[0]).each_line do |line|
  next if line.chomp.empty?
  n = line.chomp.split(',')[0].to_i
  p1 = line.chomp.split(',')[1].to_i
  p2 = line.chomp.split(',')[2].to_i

  p n.to_s(2).reverse[p1 - 1] == n.to_s(2).reverse[p2 - 1] ? true : false
end
