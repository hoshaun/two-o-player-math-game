require './Player'

p1 = Player.new('Player 1')
p2 = Player.new('Player 2')

while true
  num1 = rand(1..20)
  num2 = rand(1..20)

  puts "#{p1.name}: What does #{num1} plus #{num2} equal?"
  p1_answer = gets.chomp

  if (num1 + num2 == p1_answer.to_i)
    puts "#{p1.name}: YES! You are correct."
  else
    puts "#{p1.name}: Seriously? No!"
    p1.subtract_life()
  end

  puts "P1: #{p1.lives_remaining}/#{p1.total_lives} vs P2: #{p2.lives_remaining}/#{p2.total_lives}"

  if (p1.lives_remaining <= 0)
    break
  end

  puts "----- NEW TURN -----"

  num1 = rand(1..20)
  num2 = rand(1..20)

  puts "#{p2.name}: What does #{num1} plus #{num2} equal?"
  p2_answer = gets.chomp

  if (num1 + num2 == p2_answer.to_i)
    puts "#{p2.name}: YES! You are correct."
  else
    puts "#{p2.name}: Seriously? No!"
    p2.subtract_life()
  end

  puts "P1: #{p1.lives_remaining}/#{p1.total_lives} vs P2: #{p2.lives_remaining}/#{p2.total_lives}"
  
  if (p2.lives_remaining <= 0)
    break
  end

  puts "----- NEW TURN -----"
end

if (p1.lives_remaining <= 0)
  puts "#{p2.name} wins with a score of #{p2.lives_remaining}/#{p2.total_lives}"
else
  puts "#{p1.name} wins with a score of #{p1.lives_remaining}/#{p1.total_lives}"
end

puts "----- GAME OVER -----"
puts "Good bye!"