#métodos privated só podem ser usados pelas instâncias dentro do próprio método, não de outras instâncias.
#métodos protegidos é mias flexível ao ser chamados por instâncias dentro da própria classse.

class Foo
    def call_private
        bar
        #self.bar resultaria em erro, pois é a própria instância
    end

    private

    def bar
        puts "private method"
    end
end

foo = Foo.new

foo.call_private #é possível chamar o método call_private e usar o método privado a partir dele, mas não a partir de uma instância.
#Caso tenta-se chamar o bar via self, resulta em erro, pois o self é a própria instância

# foo.bar  ---> també resulta em erro, o método bar é privado, é proibido chamá-lo de uma instância

system "clear"

#testando o protected:

class Fii
    def call_protected(instance)
        instance.bar
        self.bar
        #self não resulta em erro, ele pode ser chamado por instâncias
    end

    protected

    def bar
        puts "protected method"
    end
end

instance_1 = Fii.new
instance_2 = Fii.new

#recebe uma instância para chamar o bar, que é a própria do objeto, como "instance_1" ou "2".
instance_1.call_protected(instance_1)
instance_1.call_protected(instance_2) #funciona inclusive chamando uma instância diferente da própria

# instance_1.bar ---> resulta em erro, o método bar é 'protegido'
