module ImpressaoDecorada
    def Imprimir text
        decoracao = '#' * 10
        puts text
        puts decoracao
    end 
end

module Gato
    include ImpressaoDecorada

    def Miado
        Imprimir 'Dar comida'
    end
end

module Cachorro
    include ImpressaoDecorada
    def Latido
        Imprimir 'Dar comida'
    end
end

class PetShop
    include Cachorro
    include Gato
end

loja = PetShop.new
loja.Latido
loja.Miado

#resumindo, dá pra usar o 'include' para
#Mesclar os Module num mesmo, permitindo usar suas classes e métodos
