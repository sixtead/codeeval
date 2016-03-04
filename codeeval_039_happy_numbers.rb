File.open(ARGV[0]).each_line do |line|
  next if line.chomp.empty?
  number = line.chomp
  happy_numbers_check = [number]

  while happy_numbers_check.length >= 1
    break if happy_numbers_check.last.to_i == 1
    number = 0
    happy_numbers_check.last.each_char do |chr|
      number += chr.to_i**2
    end
    if happy_numbers_check.include?(number.to_s)
      happy_numbers_check << 0
      break
    else
      happy_numbers_check << number.to_s
    end
  end
  puts happy_numbers_check.last.to_i
end
