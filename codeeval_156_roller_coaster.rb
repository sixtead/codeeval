File.read(ARGV[0]).each_line do |line|
  case_v = [:upcase, :downcase].cycle
  puts line.chomp.downcase.chars
           .map { |e| ('a'..'z').cover?(e) ? e.send(case_v.next) : e }.join
end
