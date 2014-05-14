print "Whats the item? "
item = gets.chomp
print "What's the price? "
price = gets.chomp.to_i
print "How many items? "
numb_item = gets.chomp.to_i

bill_noVAT = price * numb_item
puts "your bill is #{bill_noVAT}$"

VAT = bill_noVAT * 0.2
puts "your VAT is #{VAT}$"

bill_VAT = bill_noVAT * 1.2
puts "your bill with VAT is #{bill_VAT}$"
