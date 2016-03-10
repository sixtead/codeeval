File.open(ARGV[0]).each_line do |line|
  next if line.chomp.empty?

  x1 = line.chomp.split(') (')[0].delete('(').split(', ')[0].to_i
  y1 = line.chomp.split(') (')[0].delete('(').split(', ')[1].to_i
  x2 = line.chomp.split(') (')[1].delete(')').split(', ')[0].to_i
  y2 = line.chomp.split(') (')[1].delete(')').split(', ')[1].to_i

  puts Math.sqrt((x2 - x1)**2 + (y2 - y1)**2).to_i
end
