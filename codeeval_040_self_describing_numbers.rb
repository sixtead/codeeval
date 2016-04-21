File.open(ARGV[0]).each_line do |line|
  next if line.chomp.empty?
  # puts line
  is_self_describing_number = 1
  line.chomp.each_char.with_index do |char, index|
    if char.to_i != line.count(index.to_s)
      is_self_describing_number = 0
      break
    end
  end
  puts is_self_describing_number
end
