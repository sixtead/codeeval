File.open(ARGV[0]).each_line do |line|
  next if line.chomp.empty?
  x = line.split(' ')[0].to_i
  y = line.split(' ')[1].to_i
  n = line.split(' ')[2].to_i

  arr = []
  1.upto(n) do |i|
    case
    when (i % x == 0) && (i % y == 0)
      arr << 'FB'
    when i % x == 0
      arr << 'F'
    when i % y == 0
      arr << 'B'
    else
      arr << i
    end
  end
  puts arr.join(' ')
end
