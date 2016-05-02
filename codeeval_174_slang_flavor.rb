slang = [', yeah!', ', this is crazy, I tell ya.', ', can U believe this?',
         ', eh?', ', aw yea.', ', yo.', '? No way!', '. Awesome!'].cycle
index = 1
File.read(ARGV[0]).each_line do |line|
  line_new = line.chomp.split.each do |word|
    if word =~ /\.|\!|\?/
      word.tr!(word.match(/\.|\!|\?/)[0], '') << slang.next if index.even?
      index += 1
    end
  end
  puts line_new.join(' ')
end
