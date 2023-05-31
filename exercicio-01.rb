=begin
### Exercício Proposto ###
Seu João é um comerciante e ele precisa de um software que faça o cálculo de porcentagem
de desconto que ele dará para seus clientes no valor total da compra.
Faça um software que:
- Solicite o valor total do pedido;
- Solicite o valor da porcentagem;
- Mostre o valor do desconto;
- Mostre o valor com desconto aplicado (valor do pedido - valor do desconto).

### Refatoração - Inclusão de nova função
Se o valor total com desconto for inferior a R$ 10,00, o seu João irá oferecer um item a mais
no pedido no valor de R$ 15,00.

### Refatoração - Modificar a aplicação
O produto inicial e seu valor deverá ser digitado pelo usuário.
Se o valor do produto inicial for menor que 10 deveriar oferecer item adicional.
O itema adicional e o valor também será digitado pelo usuário.
O percentual de desconto deverá ser dado no total do pedido.
=end

system("cls")
print "\n"
puts "-" * 60
puts "Sistema de Vendas do seu João"
puts "-" * 60
print "\nInforme o nome do produto: "
nomeProduto = gets.chomp
print "\nInforme o valor de #{nomeProduto}: R$ "
valorProduto = gets.to_f.round(2)

valorItem = 0

if valorProduto < 10
    print "\nGostaria de incluir um novo item em seu pedido (S/N): "
    novoItem = gets.chomp
    if novoItem.upcase.strip == "S"
        print "\nInforme o nome do item adicional: "
        nomeItem = gets.chomp
        print "\nInforme o valor do item #{nomeItem}: R$ "
        valorItem = gets.to_f.round(2)
    end
end

if valorItem > 0
    valorPedido = valorProduto + valorItem
else
    valorPedido = valorProduto
end

print "\nInforme o percentual (%) de desconto: "
valorPercentual = gets.to_f.round(2)

percentual = valorPercentual / 100
valorDesconto = valorPedido * percentual
valorFinal = valorPedido - valorDesconto

print "\n"
puts "-" * 60
puts "Informações do Pedido Gerado"
puts "-" * 60
puts "#{nomeProduto}: R$ #{'%.2f' % valorProduto}"
if valorItem > 0
    puts "#{nomeItem}: R$ #{'%.2f' % valorItem}"
end
puts "-" * 60
puts "Valor Total do Pedido: R$ #{'%.2f' % valorPedido}"
puts "Desconto: #{'%.2f' % valorPercentual}% - R$ #{'%.2f' % valorDesconto}"
puts "-" * 60
puts "Valor à Receber: R$ #{'%.2f' % valorFinal}"
puts "-" * 60

print "\nPagamento em dinheiro ou cartão? (digite D - dinheiro ou C - cartão): "
formaPagamento = gets.chomp

if formaPagamento.upcase.strip == 'D'
    print "\nInforme a quantida em dinheiro entrege pelo cliente: R$ "
    dinheiroRecebido = gets.to_f.round(2)
    puts "\nDinheiro entregue pelo cliente: R$ #{'%.2f' % dinheiroRecebido}"
    print "Valor Recebido em dinheiro: R$ #{'%.2f' % valorFinal}\n\n"
    puts "-" * 60
    troco = dinheiroRecebido - valorFinal
    puts "Devolver ao cliente o troco no valor de: R$ #{'%.2f' % troco}"
    puts "-" * 60
    print "\nOperação finalizada."
else
    print "\n"
    puts "-" * 60
    puts "Valor Recebido no Cartão: R$ #{'%.2f' % valorFinal}"
    puts "-" * 60
    print "\nOperação finalizada."
end