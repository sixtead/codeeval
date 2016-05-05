File.read(ARGV[0]).each_line do |line|
  num_of_days = line.chomp.split(';')[0].to_i
  gains_losses = line.chomp.split(';')[1].split(' ').map(&:to_i)

  possible_gains_losses = []
  0.upto(gains_losses.length - num_of_days) do |i|
    possible_gains_losses << gains_losses[i..(i + num_of_days - 1)].reduce(:+)
  end

  puts possible_gains_losses.max > 0 ? possible_gains_losses.max : 0
end
