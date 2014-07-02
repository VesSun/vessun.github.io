# encoding: utf-8

puts "Gimme a word to translate"
answer = gets.chomp.capitalize

dict = {
  'Rock' => 'Камък',
  'Paper' => 'Хартия',
  'Scissors' => 'Ножица',
}

if dict.has_key?(answer)
  puts "Word in BG: #{dict[answer]}"

else
  puts "Беден ми е тако'ата ;)"
end

dict1 = dict.invert

print dict1

if dict1.has_key?(answer)
  puts "Ма 'земи да бачкаш най-накрая! #{dict[answer]}"

else
  puts "AAaaaaa noo"
end




