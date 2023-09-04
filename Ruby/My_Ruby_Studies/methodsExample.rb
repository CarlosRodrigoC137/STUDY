#Métodos parecem funções...
#exemplo método talk:

def talk
    puts "Olá como você está?"
end

#quando criar um método você deve chamá-lo.
talk

def talk2(first_name, last_name)
    puts "Olá #{first_name} #{last_name}, como você está?"
end

first_name = "Carlos"
last_name = "Barbosa"

talk2(first_name, last_name)

system "clear"

def potencia(a, b)
    return a**b
end

puts potencia(2,3)