File.open(ARGV[0]).each_line do |line|
  next if line.chomp.empty?
  number = 0
  line.chomp.each_char do |digit|
    number += digit.to_i**line.chomp.length
  end
  puts number == line.to_i ? 'True' : 'False'
end
