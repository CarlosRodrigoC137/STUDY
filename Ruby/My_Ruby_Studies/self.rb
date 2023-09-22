#self é uma variável especial que aponta para o objeto atual.
#o self representa a própria instância que o chamou
class Foo
    attr_accessor :teste
    def bar
        puts self
    end
end

foo = Foo.new
puts foo

foo.bar
#nesse caso o self é a instãncia, pois a instância foo chama o método.

class Fii
    def self.bar
        puts self
    end
end
#Pode-se chamar o método sem chamar uma instância usando o 'self' no início.
# 'bar' se torna um método de classe, ao invés de um método de instância.
Fii.bar
#nesse caso o self é a classe, pois a classe chama o método.
system "clear"

#exemplo de uso do self como método de instância:

class Pen
    attr_accessor :color
    def paint
        puts "Writting with color " + self.color 
    end
end

pen = Pen.new
pen.color = "blue"
pen.paint
#ele usa o self na instância 'color' definida,
#apesar que poderia ser feito apenas chamando a instância 'color',
#isso serve para mostrar que o self pode ser a própria instância.