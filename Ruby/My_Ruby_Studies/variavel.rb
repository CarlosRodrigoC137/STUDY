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