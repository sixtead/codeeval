File.open(ARGV[0]).each_line do |line|
  next if line.chomp.empty?

  beautiful_string = {}

  line.chomp.downcase.gsub(/[^a-z]+/, '').each_char do |char|
    if beautiful_string.key?(char)
      beautiful_string[char] += 1
    else
      beautiful_string[char] = 1
    end
  end
  sum_of_string = 0
  beautiful_string.sort_by { |_key, value| value }
                  .to_h.values.reverse_each.with_index do |number, index|
    sum_of_string += number * (26 - index)
  end
  puts sum_of_string
  # puts beautiful_string.sort_by { |key, value| value }.to_h.values.reverse
end
