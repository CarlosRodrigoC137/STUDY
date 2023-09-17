#Lambdas podem ser salvas em variáveis para serem reutilizadas.

first_lambda = lambda { puts "my first lambda" }
first_lambda.call
first_lambda.call
#é um bloco que pode ser chamado várias vezes.
#usa o método .call

first_lambda = -> (names) { names.each { |name| puts name} }
# dá pra criar uma lambda usando o símbolo '= ->', ao invés de escrever 'lambda'
# o lambda acima recebe o parâmetro 'names'
names = ['Alexa', 'Beatriz', 'Carlos']

first_lambda.call(names)
system "clear"

my_lambda = lambda do |numbers|
    index = 0
    puts "Número atual + Próximo número"
    numbers.each do |number|
        return if numbers[index] == numbers.last
        puts "(#{numbers[index]}) + (#{numbers[index +1]})"
        puts numbers[index] + numbers[index + 1]
    index += 1
    end
end

numbers = [1, 2, 3, 4]
my_lambda.call(numbers)
#Criamos um lambda, e passamos pra ele um bloco que executa várias linhas.
# assim é possível passar um bloco dentro do lambda e reaproveitar passando diferentes parâmetros 'numbers'
system "clear"

#um lambda pode ainda ser passado como parâmetro e chamado dentro de um método como os blocos:
def foo(first_lambda, second_lambda)
    first_lambda.call
    second_lambda.call
end

first_lambda = lambda { puts "my first lambda" }
second_lambda = lambda { puts "my second lambda" }

foo(first_lambda, second_lambda)
#com lambda é mais simples fazer o call dentro dos métodos e
#assim adicionar conjuntos de blocos de código como parâmetros
system 'clear'

#Usando o método capitalize, para relembrar Lambda:

# name_lambda = -> (name_string) {puts name_string.capitalize}
name_lambda = lambda { |name_string| puts name_string.capitalize }

def capitalize_name(name_lambda, name_string)
    name_lambda.call(name_string)
end

capitalize_name(name_lambda, 'alexa')
capitalize_name(name_lambda, 'beatriz')

