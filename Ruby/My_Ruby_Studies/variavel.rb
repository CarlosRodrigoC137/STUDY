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
#Não é mito comum, pode ser auterada dentro da classe
#ou ao interagir com ela
system "clear"

class DefinindoUser
    def addUser(name)
        @name = name
        puts "User adicionado"
        hello
    end
    def hello
        puts "Seja bem vindo #{@name}"
    end
end

user = DefinindoUser.new
user.addUser("Alexa")
