def game()
  def prompt(guess_count, random_number)
    guess_count = guess_count + 1

    puts "Guess a number between 1 and 100"
    answer = gets.chomp.to_i

    if random_number > answer
      puts "The number is higher than your guess, guess again"
      guess_count = guess_count += 1
      prompt(guess_count, random_number)
    elsif random_number < answer
      puts "The number is lower than your guess, guess again"
      guess_count = guess_count += 1
      prompt(guess_count, random_number)
    elsif random_number == answer
      puts "You got it right, it took you #{guess_count} tries"
    end
  end

  random_number = rand(1..100)
  puts "Guess a number between 1 and 100"
  answer = gets.chomp.to_i
  guess_count = 1

  if random_number > answer
    puts "The number is higher than your guess, guess again"
    prompt(guess_count, random_number)
  elsif random_number < answer
    puts "The number is lower than your guess, guess again"
    prompt(guess_count, random_number)
  elsif random_number == answer
    puts "You got it right, it took you #{guess_count} tries"
  end
end

game()
