#declarando array:
arr = []
puts arr.empty?

arr.push("firstArr")
puts arr.empty?
puts arr[0]

arr.push("secondword", "thirdword", "forth", "fifth")

puts arr

puts arr[0..2]
puts "espaço"
puts arr[-1]
puts arr[-2]
puts arr[-3..-1]
puts "espaço"
puts "#{arr.first}, #{arr.last}"

arr.delete_at(2) #deleta o thirdworld, na posição arr[2]
puts arr
puts arr.include?("thirdworld") #include? mostra false
arr.pop #remove o último elemento (fifith)
arr.shift #remove o primeiro elemento "firstword"
puts arr
puts arr.count
system "clear"
puts "testando Hash agora"
#Declarando um Hash

capitais = Hash.new
#ou
capitais = {}

capitais = { sao_paulo: "São Paulo", pernambuco: "Recife", bahia: "Salvador"}
#ou
capitais[:rio_de_janeiro] = "Rio de Janeiro"

puts capitais
puts capitais.keys
puts capitais.values

capitais.delete(:rio_de_janeiro)

puts capitais.size, capitais.empty?

system "clear"

#Testando Método EACH
#Each não altera os valores fora da função de trabalho dele próprio.

randowNames = ["Alexa", "Beatriz", "Claussius"]

name = "Dori é o verdadeiro name"

randowNames.each do |name|
    #ele preenche 'name' com a variável, mas não altera o de fora
    puts name + " agora é o valor de name"
end

puts name




