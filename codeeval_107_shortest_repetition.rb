file = File.read(ARGV[0])

file.each_line do |line|
  next if line.chomp.empty?
  string = line.chomp
  search_string = ''
  string.each_char do |chr|
    search_string << chr
    case
    when string.length % search_string.length == 0
      break if string == search_string * (string.length / search_string.length)
    when string.length % search_string.length != 0
      next
    end
  end
  puts search_string.length
end
