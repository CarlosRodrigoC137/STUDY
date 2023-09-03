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

#Pode-se usar o "Hash Rocket" :a => b
#ou o formato simplificado JSON a: b para definir um Hash

capitais = { sao_paulo: "São Paulo", pernambuco: "Recife", bahia: "Salvador"}
#ou
capitais[:rio_de_janeiro] = "Rio de Janeiro"

puts capitais
puts capitais.keys
puts capitais.values

capitais.delete(:rio_de_janeiro)

puts capitais.size, capitais.empty?

system "clear"

#Testando Método EACH com Array
#Each não altera os valores fora da função de trabalho dele próprio.

randowNames = ["Alexa", "Beatriz", "Claussius"]

name = "Dori é o verdadeiro name"

randowNames.each do |name|
    #ele preenche 'name' com a variável, mas não altera o de fora
    puts name + " agora é o valor de name"
end

puts name

system "clear"

#Testando Método EACH com Hash

persons = { :person1 => "Alexa", :person2 => "Beatriz", :person3 => "Carlos" }
# persons = {person1: "Alexa" ...} = json simplificado

persons.each do |key, value|
    print "#{key}, é: #{value}\n"
end

system "clear"

#Testando Map:
#O Map é usado para criar um novo array, ou atualiza o mesmo

arr = [1, 2, 3, 4]

new_arr = arr.map do |item|
    item * 2
end

print "#{arr} \n #{new_arr} \n \n"

#Sobrescrevedo arr:
arr = arr.map {|i| i*3}
print "#{arr}"

system "clear"

#testando método Select:
#Select sempre retorna o que for True dentro da especificação.

arr = [1, 2, 3, 4, 5, 6]
arrSelected = arr.select { |item| item>= 3}
print "#{arrSelected}\n"

#com hash
my_hash = {produto1: 20, produto2: 80, produto3: 30, 
    produto4: 50, produto5: 35}
hashSelected = my_hash.select { |key, value|
    value >=35
}
print "#{hashSelected}"

system "clear"

#treino de arrays e Hash com uns prints:

arr = [1, 2, 3]
newArr = arr.map{ |i| i**2 }
puts newArr

hash = {:first => "one", :second => "two", :third => "three"}
hash.each{ |key, value|
    print "Uma das chaves é #{key} e o seu valor #{value}\n"
}

numbers = {A: 10, B: 30, C: 20, D: 25, E: 15}
maxValue = 0
numbers.each{ |key, value|
    if(value>= maxValue)
        maxValue = value
        maxKey = key
    end
}
print "Chave: #{numbers.key(maxValue)}, Valor: #{maxValue}\n"

#refatorando o numbers:

selected = numbers.select { |key, value|
    value == numbers.values.max
}
#É importante utilizar "==" pois está fazendo uma comparação