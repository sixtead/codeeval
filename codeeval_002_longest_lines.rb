lines = []
longest_lines = []

File.read(ARGV[0]).each_line { |line| lines << line.chomp }
count = lines.first.to_i
lines.delete(count.to_s)

count.times do
  longest_line = lines.inject do |memo, word|
    memo.length > word.length ? memo : word
  end
  longest_lines << longest_line
  lines.delete(longest_line)
end
puts longest_lines.join("\n")
