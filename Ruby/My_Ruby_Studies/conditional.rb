item = "pedra"

print "vamos jogar pedra, papel e tesoura. \n"
print "o outro player colocou pedra. o que você coloca? "

opcao = gets.chomp

if opcao == "papel"
    puts "voce ganhou, meus parabéns!"
else
    puts "você perdeu, tente de novo :)"
end
