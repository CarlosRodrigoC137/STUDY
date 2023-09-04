#require './animal'
require_relative 'animal'
require_relative 'cachorro'

#Os requires funcionam em sequência, então
#Não troque a ordem de herança em APP.rb

animal = Animal.new
puts animal.pular

cachorro = Cachorro.new
puts cachorro.latir