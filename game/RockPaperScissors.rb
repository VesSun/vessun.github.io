puts "Two of you or you against me?"
answer = gets.chomp.capitalize

turns = ['Rock', 'Paper', 'Scissors']

if answer == "Two" or answer == "Two of us"
  puts "First of you: Rock Paper Scissors?"
  answer1 = gets.chomp.capitalize
unless turns.include? answer1
  puts "Incorrect try. Once again and be careful: Rock Paper, Scissors?"
  answer1 = gets.chomp.capitalize
end

100.times {puts ""}

puts "The second player: Choose wisely: Rock Paper Scissors?"
answer2 = gets.chomp.capitalize
unless turns.include? answer2
  puts "Incorrect try. Once again and be careful: Rock Paper, Scissors?"
  answer2 = gets.chomp.capitalize
end
else
  puts "You first: Rock Paper Scissors?"
  answer1 = gets.chomp.capitalize
unless turns.include? answer1
  puts "Incorrect try. Once again and be careful: Rock Paper, Scissors?"
  answer1 = gets.chomp.capitalize
end
answer2 = turns.shuffle.sample
puts "My turn, human! I play #{answer2}"
end

if answer1 == "Rock" and answer2 == "Scissors" then
  puts "Player 1 played #{answer1}. Player 1 wins!"
elsif answer1 == "Rock" and answer2 == "Paper" then
  puts "Player 1 played #{answer1}. Player 2 wins!"
elsif answer1 == "Paper" and answer2 == "Rock" then
  puts "Player 1 played #{answer1}. Player 1 wins!"
elsif  answer1 == "Paper" and answer2 == "Scissors" then
  puts "Player 1 played #{answer1}. Player 2 wins!"
elsif answer1 == "Scissors" and answer2 == "Paper" then
  puts "Player 1 played #{answer1}. Player 1 wins!"
elsif answer1 == "Scissors" and answer2 == "Rock" then
  puts "Player 1 played #{answer1}. Player 2 wins!"
else
  puts "We are even."
end






