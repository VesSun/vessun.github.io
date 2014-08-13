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

puts "En => De or De => En?"
print "> "
answer = gets.chomp.capitalize

puts "Gimme a word to translate!"
loop do 
  print "> "
  input = gets.chomp
  break if input == ""

  words = input.split(' ')
  words.each do |word|
  word = word.capitalize
  end

  def new_words(dict, words)
    translated_words = []
    words.each do |word|
    word = word.capitalize
      if dict.has_key?(word)
        translated_words.push(dict[word])
      elsif
        translated_words.push(word)
      end
    end
    translated_words
  end

  if answer == "En"
    dict = en_de_dict
  elsif 
    answer == "De"
    dict = de_en_dict
  else 
    dict = en_de_dict
  end

  puts new_words(dict, words).join(' ')
end
