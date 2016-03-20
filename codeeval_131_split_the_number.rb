File.read(ARGV[0]).each_line do |line|
  pattern = line.chomp.scan(/(\d+)\s([a-z]+)(\W)([a-z]+)/).flatten
  whole_number = pattern[0]
  first_digit_pattern = pattern[1]
  operand = pattern[2]
  second_number_pattern = pattern[3]

  first_digit = whole_number[0, first_digit_pattern.length].to_i
  second_digit =  whole_number.reverse[0, second_number_pattern.length]
                  .reverse.to_i

  puts first_digit.send(operand.to_sym, second_digit)
end
