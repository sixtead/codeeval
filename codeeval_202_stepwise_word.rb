File.read(ARGV[0]).each_line do |line|
  longest_word = line.chomp.split(' ').inject do |memo, word|
    word.length > memo.length ? word : memo
  end

  arr = []
  longest_word.each_char.with_index do |char, index|
    arr << ('*' * index << char)
  end
  puts arr.join(' ')
end
