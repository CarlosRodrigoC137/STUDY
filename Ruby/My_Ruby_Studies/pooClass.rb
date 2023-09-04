class Animal
    def pular
        puts "pulo"
    end
    
    def pular
        puts "pulo"
    end
end

class Cachorro < Animal
    def latir
        puts "Au Au"
    end 
end

class Gato < Animal
    def miar
        puts "Meow"
    end
end

class Dalamata < Cachorro
    def printarCaracteristica
        puts "Branco com manchas pretas"
    end
end
chamar = Cachorro.new

puts chamar.latir
puts chamar.pular

chamarDalmata = Dalamata.new

chamarDalmata.printarCaracteristica
chamarDalmata.pular

system "clear"

#Testando outro tipo

class Esportista
    def competir
        puts "Foi Competir"
    end
    def jogar
        puts "Foi Jogar"
    end
    def correr
        puts "Foi Correr"
    end
end

class JogadorDeFutebol < Esportista
    
end
class Maratonista < Esportista
    
end

chamarJogador = JogadorDeFutebol.new
chamarMaratonista = Maratonista.new
puts chamarJogador.jogar
puts chamarMaratonista.correr