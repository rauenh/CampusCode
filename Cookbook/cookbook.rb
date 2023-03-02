puts "Rede social de receitas"
puts "[1] Cadastrar uma receita"
puts "[2] Ver todas as receitas"
puts "[3] Sair"
print "Digite uma opção: " #o print faz a mesma coisa que o puts mas não dá o espaço após
opcao = gets.to_i() #transforma o texto recebido pelo gets em um numero. O gets sempre vai receber o input como texto.
receitas = []
while (opcao != 3) do
  if(opcao==1)
    puts "Digite o nome da receita:"
    nome_receita = gets.chomp()
    receitas << nome_receita
    puts "Receita #{nome_receita} cadastrada com sucesso!"
    puts
  elsif (opcao==2)
    puts "Receitas cadastradas"
    receitas.each do |receita|
      puts receita
  end
  puts "[1] Cadastrar uma receita"
  puts "[2] Ver todas as receitas"
  puts "[3] Sair"
  print "Digite uma opção: " #o print faz a mesma coisa que o puts mas não dá o espaço após
  opcao = gets.to_i()
end

end
puts "Obrigada por usar nosso programa"





# for receita in receitas do
#  puts receita
# end
#ou só puts receitas, ele vai mostrando como se fosse um for tmb
# puts "Receita" + nome_receita + " cadastrada com sucesso" #concatenação
# puts "Receita #{nome_receita} cadastrada com sucesso" #interpolação
