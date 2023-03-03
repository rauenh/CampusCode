
CADASTRAR_RECEITA = 1
VER_RECEITAS = 2
BUSCAR_RECEITAS = 3
SAIR = 4
def bem_vindo
  puts "==================================="
  puts "Bem vindo a rede social de receitas"
end
def menu
  puts "[#{CADASTRAR_RECEITA}] Cadastrar uma receita"
  puts "[#{VER_RECEITAS}] Ver todas as receitas"
  puts "[#{SAIR}] Sair"
  print "Digite uma opção: " #o print faz a mesma coisa que o puts mas não dá o espaço após
  return gets.to_i() #transforma o texto recebido pelo gets em um numero. O gets sempre vai receber o input como texto. o return é opcional o método retorna sempre a ultima coisa escrita na linha
end
def inserir_receita
  puts "Digite o nome da receita:"
  nome_receita = gets.chomp()
  puts "Digite o tipo da receita: "
  tipo_receita = gets.chomp()
  puts "Receita #{nome_receita} cadastrada com sucesso!"
  puts
  return {nome: nome_receita, tipo: tipo_receita}
end
def receitas_cadastradas(r)
  puts "Receitas cadastradas"
  r.each do |receita|
    puts "#{receita[:nome]} - #{receita[:tipo]}"
  end
  puts
end
bem_vindo()

opcao = menu() #como o return do método aceita valores dá pra vc fazer essa chamada de valores com outras variaveis no codigo
receitas = []
while (opcao != SAIR) do
  if(opcao== CADASTRAR_RECEITA)
    receitas << inserir_receita()
  elsif (opcao== VER_RECEITAS)
    receitas_cadastradas(receitas)
    if receitas.empty?
      puts "Não há receitas cadastradas"
    end
  else
    puts "opção invalida"
end
opcao = menu()
end
puts "Obrigada por usar nosso programa"





# for receita in receitas do
#  puts receita
# end
#ou só puts receitas, ele vai mostrando como se fosse um for tmb
# puts "Receita" + nome_receita + " cadastrada com sucesso" #concatenação
# puts "Receita #{nome_receita} cadastrada com sucesso" #interpolação
