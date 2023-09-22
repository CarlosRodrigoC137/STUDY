#Forma de declarar um regex:
puts /abcd/.class
puts %r{abcd}.class
puts Regexp.new('abcd').class

#procurando a posição da expressão 'by' na string:
puts /by/ =~ 'ruby'
puts /by/ =~ 'ruuuby'

#Retorno nil quando não houver a expressão
puts /by/ =~ 'rub'
system 'clear'
#Testando o método 'metch' da classe Regex:

phrase = "Hello there, how are you?"
puts match_data = /how/.match(phrase)
#ele encontrou o resultado e agora podemos trabalhar com ele;

puts match_data.pre_match
puts match_data.post_match
system 'clear'

#Para buscar sinais dentro do Regex, use uma barra contrária " \ " antes:

puts match_data = /\?/.match(phrase)
system 'clear'

#Character classes:

puts /[1-5]/.match('123')
puts /[1-5]/.match('234')
puts /[3-5]/.match('3456')
puts /\d/.match('4567')
#busca o primeiro character, o \d seleciona qualquer numero 0-9.
puts /[a-z]/.match("Hello")
puts /[A-Z]/.match("Hello")

#os dois juntos, para validar o texto "A4", "A5", etc:
puts /A\d/.match("A4")

#para validar o padrão de um número de telefone '87 912345678':
# {} indica quantidade
puts /\d{2} 9\d{4}-\d{4}/.match('87 91234-5678')