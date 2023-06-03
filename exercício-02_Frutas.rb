=begin
Crie um programa que irá verificar o nome da fruta digitada pelo usuário e retornar
o preço da fruta ao usuário.
Lista das frutas disponíveis:
- Banana
- Maçã
- Laranja
=end

system "cls"
print "Informe o nome de uma fruta: "
nomeFruta = gets.chomp.upcase.strip

case nomeFruta
when "BANANA"
  puts "O preço da #{nomeFruta} é: R$ 8,00"
when "MAÇÃ", "MACA", "MACÃ", "MAÇA"
  puts "O preço da #{nomeFruta} é: R$ 10,00"
when "LARANJA"
  puts "O preço da #{nomeFruta} é: R$ 5,00"
else
  puts "A fruta #{nomeFruta} não está disponível no estoque."
end
