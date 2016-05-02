# require 'Math'
File.read(ARGV[0]).each_line do |line|
  elements = line.chomp.split(' ')
  dimension = Math.sqrt(elements.count).to_i
  matrix = Array.new(dimension) { Array.new(dimension) }

  0.upto(dimension - 1) do |j|
    (dimension - 1).downto(0) do |i|
      matrix[i][j] = elements.pop
    end
  end
  puts matrix.flatten.join(' ')
end
