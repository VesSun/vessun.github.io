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

 de_en_dict = en_de_dict.invert

puts "Gimme a word to translate"
loop do 
  print "> "
  input = gets.chomp
  if input == ""
    break
  end


  translated_words = []

  words = input.split(' ')
  words.each do |word|
  word = word.capitalize
  end

  
  if words.include?('(en)')
    words.delete('(en)')
    words.each do |word|
      word = word.capitalize
      if en_de_dict.has_key?(word)
        translated_words.push(en_de_dict[word])
      elsif
        translated_words.push(word)
      end
    end

  elsif 
    words.include?('(de)')
    words.delete('(de)')
    words.each do |word|
      word = word.capitalize
      if de_en_dict.has_key?(word)
         translated_words.push(de_en_dict[word])
      elsif
        translated_words.push(word)
      end
    end
  else 
    words.each do |word|
      word = word.capitalize
      if en_de_dict.has_key?(word)
        translated_words.push(en_de_dict[word])
      elsif
        translated_words.push(word)
      end
    end
  end

  puts translated_words.join(' ')
end