=begin
### Exercício Proposto ###
Seu João é um comerciante e ele precisa de um software que faça o cálculo de porcentagem
de desconto que ele dará para seus clientes no valor total da compra.
Faça um software que:
- Solicite o valor total do pedido;
- Solicite o valor da porcentagem;
- Mostre o valor do desconto;
- Mostre o valor com desconto aplicado (valor do pedido - valor do desconto).
=end

system("cls")
print "\n"
puts "-" * 60
puts "Cálculo de Desconto sobre o valor total do Pedido"
puts "-" * 60
print "\nInforme o valor total do Pedido: R$ "
valorPedido = gets.to_f
print "Informe o percentual (%) de desconto: "
valorPercentual = gets.to_f

percentual = valorPercentual / 100
valorDesconto = valorPedido * percentual
valorFinal = valorPedido - valorDesconto

print "\n"
puts "-" * 60
puts "Valor do Pedido: R$ #{valorPedido}"
puts "Desconto: #{valorPercentual}% - R$ #{valorDesconto}"
puts "-" * 60
puts "Valor à Receber: R$ #{valorFinal}"
puts "-" * 60
print "\n\nPagamento em dinheiro ou cartão? (digite d - dinheiro ou c - cartão): "
formaPagamento = gets.chomp

if formaPagamento == 'd'
    print "\nInforme a quantida em dinheiro entrege pelo cliente: R$ "
    dinheiroRecebido = gets.to_f
    puts "\nDinheiro entregue pelo cliente: R$ #{dinheiroRecebido}"
    puts "Valor cobrado: R$ #{valorFinal}"
    puts "-" * 60
    troco = dinheiroRecebido - valorFinal
    puts "Troco à entregar ao cliente: R$ #{troco}"
    puts "-" * 60
    puts "\nOperação finalizada."
else
    puts "Operação finalizada."
end