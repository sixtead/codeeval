File.read(ARGV[0]).each_line do |line|
  a = line.chomp.chars.partition { |e| e.eql? e.downcase }.first
  d_case = a.empty? ? 0 : a.count.to_f * 100 / line.chomp.chars.count
  u_case = 100 - d_case
  puts "lowercase: #{format('%.2f', d_case)} \
    uppercase: #{format('%.2f', u_case)}"
end
