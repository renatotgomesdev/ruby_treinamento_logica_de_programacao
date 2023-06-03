# Utilização do case no Ruby

idade = 18

case idade
when 0..2
  puts "Bebê"
when 3..12
  puts "Criança"
when 13..19
  puts "Adolescente"
when 20..25
  puts "Jovem adulto"
else
  puts "Adulto"
end
