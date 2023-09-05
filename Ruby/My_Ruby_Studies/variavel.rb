def testelocal
    local = 'local é acessada apenas dentro deste metodo'
    print local
end

testelocal

local = 1234
puts local

# VARIAVEL GLOBAL
#só existem dentro do método onde especificadas.
#não podem ser alteradas fora deste.
#podem existir uma com o mesmo nome fora do método
system "clear"

class DefinindoGlobal
    def auterandoGlobal
        $global = 0
        puts $global
    end
end
class RedefinindoGlobal
    def reAuterandoGlobal
        $global += 1
        puts $global
    end
end

minhaGlobal = DefinindoGlobal.new
minhaGlobal2 = RedefinindoGlobal.new
puts minhaGlobal.auterandoGlobal
puts minhaGlobal2.reAuterandoGlobal
puts minhaGlobal2.reAuterandoGlobal
puts minhaGlobal2.reAuterandoGlobal

puts $global

# VARIÁVEL GLOBAL
#Elas podem ser chamadas dentro de outras classes e escopos/métodos
#podem ser auteradas a todo momento.
#Não se recomenda usar.
system "clear"

class User
    @@user_count = 0
    def add(name)
        puts "User #{name} adicionado"
        @@user_count += 1
        puts @@user_count
    end
end

first_user = User.new
first_user.add("Alexa")

second_user = User.new
second_user.add("Beatriz")

third_user = User.new
third_user.add("Carlos")

# VARIÁVEIS DE CLASSE
# use-se '@@'
# É iniciada fora de qualquer método.
# pode ser usada e auterada por qualquer instância(objeto) da classe.
# No caso acima todos os objetos compartilham o @@user_count

system "clear"

class User
    def addName(name)
        @name = name
        puts "User adicionado"
        hello
    end
    def hello
        puts "Seja bem vindo #{@name}"
    end

end

user1 = User.new
user1.addName("Alexa")
user2 = User.new
user2.addName("Beatriz")

puts user1.hello, user2.hello

# VARIÁVEIS DE INSTÂNCIA
# USE-SE '@'
#A variável de instância pertênce apenas a instância (objeto) ao qual foi chamada.
#Os objetos podem chamar a mesma V.I, através dos métodos apenas,
#para gerar uma nova instância para si, 
#mas não compartilhar uns com os outros

# Cada objeto, "user1" e "user2", continua inalterado 
#mesmo usando a mesma V.instância "@name"

system "clear"

#Contiuação Variável de Instância:
#Atributos:

class Dog
    def name
        @name
        #define a variável de instância
    end
    def name= name
        @name = name
        #preenche a variável de instância name
    end
    
end

dog = Dog.new
dog.name = "Alexa"
puts dog.name

#o método acima é muito demorado e complicado.
system 'clear'

class Dog
    attr_accessor :name, :age
end

dog = Dog.new
dog.name = "Alexa"
dog.age = "1 ano"
puts dog.name, dog.age

#Para não preceisar definir e preencher a variável de instância,
#Usamos a definição de atributo 'attr_accessor :atributeName'
#O que o attr_acessor faz é gerar os dois defs acima, para definir e preencher.
system 'clear'

class Person
    def initialize(name, age, country)
        @name = name
        @age = age
        @country = country
    end

    def checkInformation
        puts "Instância iniciada com valores:",
        "Name = #{@name}", "Age = #{@age}", "Country = #{@country}"
    end
end

person = Person.new("Alexa", 18, "País das Maravilhas")
person.checkInformation

#Constructor: usar o constructor, a classe com o método padrão
# initialize permite que o programa seja iniciado com a definição de instâncias,
# assim como, a definição dos parâmetros no método ".new" ao criar um objeto.

