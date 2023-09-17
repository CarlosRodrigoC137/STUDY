#Um proc é um bloco de código que pode ser armazenado numa variável local e chamado num método assim como a Lambda.

#exemplo simples:
squareNumber = Proc.new { |x| x**2 }
#ou apenas use = proc {}, como no lambda

puts squareNumber.call(2)
# ou
puts squareNumber.(3)
# ou
puts squareNumber[4]
system 'clear'

#diferenças entre Lambdas e Procs:

#Lambda -> Return e Break é um exit do Lambda.
#Proc -> Return e Break é uma saída do próprio método ou for.
#Exemplo de return:

def testReturn
    -> { return "Retorno do Lambda"}.call
    proc { return "Retorno método com Proc"}.call
    return "Retorno do método sem Proc"
end

#Vai retornar com o Proc como mostrado acima.
puts testReturn
system 'clear'

#Lambdas -> parâmetros são tratados de forma Estrita como nos métodos.
#Props -> parâmetros são tratados com "gererosidade", aceitos até um ponto.
#exemplos com os parâmetros:

argumentProc = proc { |x, y| puts "x=#{x}, y=#{y}" }

argumentProc.call(1, 2)  #numero correto de parâmetros
argumentProc.call([1, 2])  #descontrói o array para usar como parâmetros
argumentProc.call(1, 2, 8) #descarta o parâmetro a mais
argumentProc.call(1) #substitui o argumento que falta por "nil"
#O proc é family-friend

argumentLambda = lambda { |x, y| puts "x=#{x}, y=#{y}" }

argumentLambda.call(1, 2)  #numero correto de parâmetros
# argumentLambda.call([1, 2]) --- erro no número de argumentos
# argumentLambda.call(1, 2, 8) --- erro no número de argumentos
# argumentLambda.call(1) --- erro no número de argumentos
#O Lambda é sempre restrito e auto-suficiente.
system "clear"

#Resumindo, pela necessidade de usar os Procs como aliádos dos métodos,
#Os Procs são úteis como iteradores dentro de maps, usando "&":

my_proc = proc { |x,y| puts x }

[[1,2], [3,4]].map( &my_proc )