File.read(ARGV[0]).each_line do |line|
  puts case line.chomp.to_i
       when 0..2
         "Still in Mama's arms"
       when 3..4
         'Preschool Maniac'
       when 5..11
         'Elementary school'
       when 12..14
         'Middle school'
       when 15..18
         'High school'
       when 19..22
         'College'
       when 23..65
         'Working for the man'
       when 66..100
         'The Golden Years'
       else
         'This program is for humans'
       end
end
