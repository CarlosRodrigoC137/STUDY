#Blocks, ou funções sem nome.
#Só é possível passar um block (conjunto de informação) por método.

5.times { puts "Exec the block" }
# block é uma função sem nome;
system "clear"

sum = 0
numbers = [5, 10, 15]
numbers.each { |number| sum+=number }
puts sum
# block sendo passado como um parâmetro.
# dentro de todo each tem um block/função sem nome
system "clear"

foo = { 2 => 3, 4 => 5}

foo.each do |key, value|
    puts "key = #{key}"
    puts "value = #{value}"
    puts "---"
end
# para blocks de multiplas linhas deve-se usar do..end
system "clear"

def foo
    #usa-se 'yield' para chamar blocks como parâmetros
    #mesmo que não se tenha adotado nenhum parãmetro para o método
    yield
    yield
end

foo { puts "Exec this block" }
#o block realmente é chamado usando yiled,
# mesmo não tendo adotado nehum parâmetro no método foo
foo do
    puts "exec this multiple lines block"
    puts 123
end
# dá pra usar com blocks de multiplas linhas também
system "clear"

def foo
    if block_given?
        #testando block_given, chamar o block
        yield
    else
        puts "Sem parâmetro do tipo bloco"
    end
end

foo
foo { puts "Com parâmetro do tipo bloco" }
#testando o verificador condiciional de blocos
system "clear"

def foo(name, &block)
    @name = name
    block.call
end

foo("Alexa") { puts "Hello, #{@name}." }
#passando block e parâmetro normal.
# No caso acima a variável de instância @name fica disponível para o bloco, pois ele é chamado dentro da função
#Se o bloco fosse de várias linhas:
foo("Beatriz") do
    puts "Hello, #{@name}."
    puts "Nice to meet you."
end

system "clear"