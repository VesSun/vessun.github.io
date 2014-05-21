print "How many items? "
items = gets.chomp.to_i
sum = 0

items.times do
  print "Whats the item? "
  item = gets.chomp
  print "What's the price? "
  price = gets.chomp.to_f
  print "How many items? "
  numb_item = gets.chomp.to_i

  bill_noVAT = price * numb_item
  puts "your bill is #{bill_noVAT}$"
  sum += bill_noVAT   #<= same as "sum = sum + bill_noVAT"
end
puts "your bill without VAT is #{sum}"

VAT = sum * 0.2
puts "your VAT is #{VAT}$"

bill_VAT = sum + VAT #same as "sum*1.2"
puts "your bill with VAT is #{bill_VAT}$"
