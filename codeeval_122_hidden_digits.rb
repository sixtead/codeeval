File.read(ARGV[0]).each_line do |line|
  digits = ''
  line.chomp.scan(/[a-j]|\d/).each do |e|
    digits << case
              when e.eql?('a')
                '0'
              when e.eql?('b')
                '1'
              when e.eql?('c')
                '2'
              when e.eql?('d')
                '3'
              when e.eql?('e')
                '4'
              when e.eql?('f')
                '5'
              when e.eql?('g')
                '6'
              when e.eql?('h')
                '7'
              when e.eql?('i')
                '8'
              when e.eql?('j')
                '9'
              else
                e
              end
  end
  puts digits.empty? ? 'NONE' : digits
end
