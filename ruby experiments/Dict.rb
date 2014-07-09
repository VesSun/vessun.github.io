# encoding: utf-8
en_de_dict = {}

raw_dict = File.read('en_de_dict')
dict_lines = raw_dict.split("\n")
dict_lines.each do |line|
  word_pair = line.strip.split(',')
  en_word = word_pair[0]
  de_word = word_pair[1]
  en_de_dict[en_word] = de_word
end

puts "Gimme a word to translate"
loop do 
  input = gets.chomp
  if input == ""
    break
  end
  words = input.split(' ')
  translated_words = []

  words.each do |word|
    word = word.capitalize

    if en_de_dict.has_key?(word)
      translated_words.push(en_de_dict[word])
    else
      translated_words.push(word)
    end

  end

  puts translated_words.join(' ')
  
  
 

  # de_en_dict = en_de_dict.invert

  # if de_en_dict.has_key?(word)
  #   puts "Word in EN #{de_en_dict[word]}"

  # else
  #   puts "Keine solche Wort"
  # end

end


