require './produto'
require './mercado'

produto = Produto.new("notebook", 4000)
mercado = Mercado.new(produto)
mercado.comprar