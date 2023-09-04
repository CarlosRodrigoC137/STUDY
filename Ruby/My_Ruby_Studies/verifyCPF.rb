require 'cpf_cnpj'

def verify(number)
    CPF.valid?(number)
end

cpf = CPF.generate(true)
puts cpf

puts "Is cpf '#{cpf}' valid: '#{verify(cpf)}'"
