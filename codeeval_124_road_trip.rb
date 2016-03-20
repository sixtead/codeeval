File.read(ARGV[0]).each_line do |line|
  distances = line.chomp.scan(/\d+/).map(&:to_i).sort
  route = []
  distances.each_index do |i|
    if i == 0
      route << distances[i]
    else
      route << distances[i] - distances[i - 1]
    end
  end
  puts route.join(',')
end
