File.read(ARGV[0]).each_line do |line|
  players = line.chomp.split(' | ')[0].split(' ')
  number = line.chomp.split(' | ')[1].to_i

  while players.length > 1
    last_one = ''
    round = players.cycle
    number.times { last_one = round.next }
    players.delete(last_one)
  end
  puts players
end
