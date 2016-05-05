File.read(ARGV[0]).each_line do |line|
  houses = line.chomp.split(' ').map(&:to_i)[1..-1]
  puts houses.uniq.sort.map { |i| houses.map { |e| (e - i).abs }.reduce(:+) }
    .min
end
