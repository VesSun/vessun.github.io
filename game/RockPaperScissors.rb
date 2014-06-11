puts "Rock Paper Scissors?"
answer1 = gets.chomp
if answer1 != "Rock" and answer1 != "Paper" and answer1 != "Scissors"
  puts "Incorrect try"
  exit
end

puts "Rock Paper Scissors?"
answer2 = gets.chomp
if answer2 != "Rock" and answer2 != "Paper" and answer2 != "Scissors"
  puts "Incorrect try"
  exit
end

if answer1 == "Rock" and answer2 == "Scissors" then
  puts "Player 1 wins"
elsif answer1 == "Rock" and answer2 == "Paper" then
  puts "Player 2 wins"
elsif answer1 == "Paper" and answer2 == "Rock" then
  puts "Player 1 wins"
elsif  answer1 == "Paper" and answer2 == "Scissors" then
  puts "Player 2 wins"
elsif answer1 == "Scissors" and answer2 == "Paper" then
  puts "Player 1 wins"
elsif answer1 == "Scissors" and answer2 == "Rock" then
  puts "Player 2 wins"
else
  puts "You lose. I mean, both of you"
end