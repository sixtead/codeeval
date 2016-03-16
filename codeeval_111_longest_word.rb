File.read(ARGV[0]).each_line do |line|
  next if line.chomp.empty?
  string = line.chomp.split(' ')
  longest_word = string.inject do |memo, word|
    memo.length < word.length ? word : memo
  end
  puts longest_word
end
