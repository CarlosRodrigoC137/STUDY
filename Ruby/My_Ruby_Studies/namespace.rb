module ReverseWorld
    def self.puts text
        #O 'self' diz que o método pertence ao Module.
        print text.reverse.to_s
    end
    #Mesmo já existindo o método 'puts', dentro da Module é possível criar um próprio.
    #O nome disso é um "NameSpace", onde não há conflito entre os métodos
end

ReverseWorld::puts 'O resultado é'

#Cria-se os Modules para guardar e organizar um conjunto de classes com funções que se integram
#Para fazer o callback delas  formato ModuleName::ClasseName (ou método)
system "clear"
module NormalWorld
    def self.puts text
        print text
    end
    
    class Imprimir
        def Impressora text
            print text
            puts "copiado"
        end
    end
end

imprimir = NormalWorld::Imprimir.new
imprimir.Impressora "The name is Alexa."

NormalWorld::puts "Funcionou"