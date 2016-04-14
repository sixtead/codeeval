File.read(ARGV[0]).each_line do |line|
  sentence = line.chomp.split(';')[0].split(' ')
  key = line.chomp.split(';')[1].split(' ').map(&:to_i)

  key << ((1..sentence.count).to_a - key)[0]

  puts Hash[key.zip(sentence).sort].values.join(' ')
end
