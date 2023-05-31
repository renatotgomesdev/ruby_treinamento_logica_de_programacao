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
=end

system("cls")
print "\n"
puts "-" * 60
puts "#### Cálculo de Desconto sobre o valor total do Pedido ####"
puts "-" * 60
print "\nInforme o valor total do Pedido: R$ "
valorPedido = gets.to_f.round(2)
print "Informe o percentual (%) de desconto: "
valorPercentual = gets.to_f.round(2)

percentual = valorPercentual / 100
valorDesconto = valorPedido * percentual
valorFinal = valorPedido - valorDesconto

print "\n"
puts "-" * 60
puts "Valor do Pedido: R$ #{'%.2f' % valorPedido}"
puts "Desconto: #{'%.2f' % valorPercentual}% - R$ #{'%.2f' % valorDesconto}"
puts "-" * 60
puts "Valor à Receber: R$ #{'%.2f' % valorFinal}"
puts "-" * 60

valorNovoItem = 0

if valorFinal < 10
    print "\nGostaria de incluir um novo item em seu pedido (S/N): "
    novoItem = gets.chomp
    if novoItem.upcase.strip == "S"
        print "\n"
        puts "-" * 60
        puts "Selecione o seu item adicional"
        puts "-" * 60
        puts "\n1 - Batata Frita - R$ 15,00"
        print "\n2 - Sorvete Gourmet - R$ 20,00\n"
        print "\n3 - Cancelar item adicional\n\n"
        opcao = gets.to_f.round(2)
        if opcao == 1
            item = "Batata Frita"
            valorNovoItem = 15
        elsif opcao == 2
            item = "Sorvete Gourmet"
            valorNovoItem = 20
        else
            valorNovoItem = 0
        end
        valorFinal = valorFinal + valorNovoItem;
    end
end

print "\nPagamento em dinheiro ou cartão? (digite D - dinheiro ou C - cartão): "
formaPagamento = gets.chomp

if formaPagamento.upcase.strip == 'D'
    if valorNovoItem > 0
        print "\n"
        puts "-" * 60
        puts "#### Pedido Atualizado ####"
        puts "-" * 60
        puts "Valor do Pedido: R$ #{'%.2f' % valorPedido}"
        puts "Desconto: #{'%.2f' % valorPercentual}% - R$ #{'%.2f' % valorDesconto}"
        puts "Acréscimo de 1 #{item}: R$ #{'%.2f' % valorNovoItem}"
        puts "-" * 60
        puts "Valor à Receber: R$ #{'%.2f' % valorFinal}"
        puts "-" * 60
    end
    print "\nInforme a quantida em dinheiro entrege pelo cliente: R$ "
    dinheiroRecebido = gets.to_f.round(2)
    puts "\nDinheiro entregue pelo cliente: R$ #{'%.2f' % dinheiroRecebido}"
    print "Valor cobrado: R$ #{'%.2f' % valorFinal}\n\n"
    puts "-" * 60
    troco = dinheiroRecebido - valorFinal
    puts "Devolver ao cliente o troco no valor de: R$ #{'%.2f' % troco}"
    puts "-" * 60
    print "\nOperação finalizada."
else
    print "\n"
    if valorNovoItem > 0
        puts "-" * 60
        puts "#### Pedido Atualizado ####"
        puts "-" * 60
        puts "Valor do Pedido: R$ #{'%.2f' % valorPedido}"
        puts "Desconto: #{'%.2f' % valorPercentual}% - R$ #{'%.2f' % valorDesconto}"
        puts "Acréscimo de 1 #{item}: R$ #{'%.2f' % valorNovoItem}"
    end
    puts "-" * 60
    puts "Valor Recebido no Cartão: R$ #{'%.2f' % valorFinal}"
    puts "-" * 60
    print "\nOperação finalizada."
end