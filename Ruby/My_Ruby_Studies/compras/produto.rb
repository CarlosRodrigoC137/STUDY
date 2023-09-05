class Produto
    attr_accessor :nome, :preco
    def initialize(nome, preco)
        @nome = nome
        @preco = preco
    end
end

#O attr_accessor foi necessário para que as intâncias
#@nome e @preco fossem acessíveis dentro da classe Mercado
#desde que instâncias NÃO SÃO ACESSÍVEIS fora dos métodos
#muito menos em outra classe;