caixa = nil

nome = "Cris"
puts "Seja bem vindo #{nome}" if not nome.nil?


nome = "Mauricio"
puts "Seja bem vindo #{nome}" unless nome.nil?

nome = "Joao"
puts "Seja bem vindo #{nome}" if nome

idade = 33
nome  = "Mauricio"

if idade > 18
    puts "O usuário #{nome} é maior de idade"
end

puts "O usuário #{nome} é maior de idade" if idade > 18

for numero in (1..10)
    puts numero
end

numero = 0
while numero <= 10
    puts numero
    numero += 1
end

numero = 0
until numero == 10
    puts numero
    numero += 1
end

def plural(palavra)
    "#{palavra}s"
end

puts plural("caneta")
puts plural("gato")

#openclass
class String
    def pluralize
        self + 's'
    end
end

puts "caneta".pluralize

idade = 33
puts idade.class

habitantes = 1_000_000_000
puts habitantes.class

peso = 80.5
puts peso.class

nome_completo = "Mauricio"
puts nome_completo.class

nome_com_aspas_duplas = "Joana d'Arc" # funciona
puts nome_com_aspas_duplas

#Prefira sempre o uso de String com aspas duplas e priorize sempre a interpolação de variáveis.
lação quando for concatenar.
nome = "Mauricio"
boas_vindas = "Bem vindo #{nome}"
puts boas_vindas

#1 = "Mauricio" # não funciona
nome = "Mauricio" # funciona
$nome = "Mauricio" # funciona
_nome = "Mauricio" # funciona

telefone_celular = "(99) 99999-99999"

=begin
idade = 10
nome = "Mauricio"
=end

string_especial_usando_aspas_simples = 'Isso é "normal" e \'util\' no mundo Ruby'
puts string_especial_usando_aspas_simples

string_especial_usando_aspas_duplas = "Isso é \"normal\" e 'util' no mundo Ruby"
puts string_especial_usando_aspas_duplas

string_especial = %{Isso é "normal" e 'util' no mundo Ruby}
puts string_especial