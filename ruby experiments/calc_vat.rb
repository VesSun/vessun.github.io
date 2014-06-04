print "How many items? "
items = gets.chomp.to_i
sum = 0
rows = ""

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
  rows = rows + "<tr>
      <td style=\"text-align:center\">#{item}</td>
      <td style=\"text-align:center\">#{numb_item}</td>
      <td style=\"text-align:center\">#{price}$</td>
                </tr>"
end
puts "your bill without VAT is #{sum.round(3)}"

vat = sum * 0.2
puts "your VAT is #{VAT.round(3)}$"

bill_VAT = sum + vat #same as "sum*1.2"
puts "your bill with VAT is #{bill_VAT.round(3)}$"

values ={
  sum: sum.round(3),
  VAT: vat.round(3),
  sum_VAT: bill_VAT.round(3),
  rows: rows
}

calculator = File.read('vat_template.html')
File.write "calc_vat.html", calculator % values

