File.open(ARGV[0]).each_line do |line|
  next if line.chomp.empty?
  number = line.chomp
  happy_numbers_check = [number]

  while happy_numbers_check.length > 1
    if happy_numbers_check.last.to_i == 1
      puts happy_numbers_check.last.to_i
      break
    else
      number = 0

      happy_numbers_check.last.each_char do |chr|
        number += chr.to_i**2
      end
      # TODO: check if number is presented in happy_numbers_check array
      # if it is there break the loop and puts 0

      happy_numbers_check << number.to_s
    end
  end
end
