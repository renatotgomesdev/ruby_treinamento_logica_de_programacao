=begin
Crie um programa que irá verificar exibir a seguinte opções para que o usuário escolha:
- Banana
- Maçã
- Laranja
De acordo com a escolha do usuário, deverá retornar o valor da fruta.
=end
loop = true
while loop
  system "cls"
  print "\n"
  puts "-" * 60
  puts "Selecione um item"
  puts "-" * 60
  puts "1. Banana"
  puts "2. Maçã"
  puts "3. Laranja"
  print "4. Sair\n\n"
  print "Digite sua opção: "
  nomeFruta = gets.to_i

  case nomeFruta
  when 1
    print "\nO preço da Banana é: R$ 8,00\n"
    print "\nDeseja verificar outro item? (S/N)"
    opcao = gets.chomp.upcase.strip
    loop = opcao == "S" ? true : false
  when 2
    print "\nO preço da Maçã é: R$ 10,00\n"
    print "\nDeseja verificar outro item? (S/N)"
    opcao = gets.chomp.upcase.strip
    loop = opcao == "S" ? true : false
  when 3
    print "\nO preço da Laranja é: R$ 5,00\n"
    print "\nDeseja verificar outro item? (S/N)"
    opcao = gets.chomp.upcase.strip
    loop = opcao == "S" ? true : false
  when 4
    system "cls"
    print "\nEncerrando o Sistema...\n"
    sleep 1
    loop = false
  else
    system "cls"
    print "\nOpção não disponível\n"
    sleep 1
  end
end
