puts "-" * 60
puts "Operação matemática de soma entre dois números"
puts "-" * 60
print "Informe o primeiro número: "
a = gets.to_i
print "Informe o segundo número: "
b = gets.to_i

resultado = a + b

puts "-" * 60
# puts "O resultado da soma das variáveis a + b é igual: " + (a + b).to_s
puts "O resultado da soma é: #{resultado}"