File.read(ARGV[0]).each_line do |line|
  distances = line.chomp.scan(/\d+/).map(&:to_i).sort
  route = []
  distances.each_index do |i|
    route << (i == 0 ? distances[i] : distances[i] - distances[i - 1])
  end
  puts route.join(',')
end
