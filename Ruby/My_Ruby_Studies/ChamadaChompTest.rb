#Vamos capturar uma entrada pelo teclado do usuário
#e printar isso aqui!
print "Hello, write your name: "

name = gets.chomp

puts "Now, write your family name: "

#Veja que o método "print" cola o name ao lado, enquanto
#o método "puts" cola abaixo.

familyName = gets.chomp

print "And your age: "

age = gets.chomp.to_i

puts "Your name is #{name} #{familyName}, #{age} years."

puts name.class
puts familyName.class
puts age.class