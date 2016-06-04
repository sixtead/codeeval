File.read(ARGV[0]).each_line do |line|
  next if line.chomp.empty?
  s1 = line.chomp.split(';')[0].chars
  s2 = line.chomp.split(';')[1].chars

  subseq_arr = []
  subseq = ''
  char_index = -1

  0.upto(s1.length) do |i|
    s1[i..s1.length].each do |char|
      if s2.include?(char) && s2.index(char) > char_index
        subseq << char
        char_index = s2.index(char)
        s2.delete_at(char_index)
        char_index -= 1
      end
    end
    subseq_arr << subseq
    subseq = ''
    char_index = -1
  end

  p subseq_arr.inject { |a, e| e.length < a.length ? a : e }.chomp
end
