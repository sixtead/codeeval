# Working good with printf("%4s", i * j) and puts (i * j).to_s.rjust(4, ' ')
# on my PC. But doesn't work with puts on codeeval
1.upto(12) do |i|
  row = []
  1.upto(12) do |j|
    printf("%4s", i * j)
  end
  printf("\n")
end
