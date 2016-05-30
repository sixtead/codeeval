File.read(ARGV[0]).each_line do |line|
  stack = []
  line.chomp.split(' ').reverse.each do |e|
    case e
    when '+', '-', '*', '/'
      stack << stack.pop.send(e.to_sym, stack.pop)
    else
      stack << e.to_f
    end
  end
  p stack[0].floor
end
