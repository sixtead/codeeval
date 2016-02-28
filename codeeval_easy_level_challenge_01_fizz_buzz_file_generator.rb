File.open('codeeval_easy_level_challenge_01_fiizz_buzz.txt', 'w+') do |file|
  random_generator = Random.new
  iterations = random_generator.rand(20)

  iterations.times do
    buzz_fizz_array = []
    buzz_fizz_array << random_generator.rand(1..20)
    buzz_fizz_array << random_generator.rand(1..20)
    buzz_fizz_array << random_generator.rand(21..50)

    puts buzz_fizz_array.join(' ')

    file.puts buzz_fizz_array.join(' ')
  end
end
