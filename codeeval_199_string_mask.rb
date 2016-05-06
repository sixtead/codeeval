File.read(ARGV[0]).each_line do |line|
  word = line.chomp.split(' ')[0]
  mask = line.chomp.split(' ')[1]

  arr = []
  word.chars.zip(mask.chars) { |w, m| arr << (m.eql?('1') ? w.upcase : w) }
  puts arr.join
end
