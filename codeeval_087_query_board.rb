ARRAY_DIMENSION = 256
matrix = Array.new(ARRAY_DIMENSION) { Array.new(ARRAY_DIMENSION, 0) }
# matrix[i][j]: i - row, j - col
File.open(ARGV[0]).each_line do |line|
  next if line.chomp.empty?
  operation = line.chomp.split(' ')[0]
  ij = line.chomp.split(' ')[1].to_i
  x = line.chomp.split(' ')[2].to_i unless line.chomp.split(' ')[2].nil?

  case operation
  when 'SetRow'
    ARRAY_DIMENSION.times { |j| matrix[ij][j] = x }
  when 'SetCol'
    ARRAY_DIMENSION.times { |i| matrix[i][ij] = x }
  when 'QueryRow'
    sum = 0
    ARRAY_DIMENSION.times { |j| sum += matrix[ij][j] }
    puts sum
  when 'QueryCol'
    sum = 0
    ARRAY_DIMENSION.times { |i| sum += matrix[i][ij] }
    puts sum
  end
end
