puts 'Lista de Compras:'

file = File.open('shopping-list.txt')
#Lê os asquivos e guarda numa variável, 'file' no caso.

file.each do |line|
    puts line
end


#agora para escrever dentro do arquivo:

File.open('shopping-list.txt', 'a') do |line|
    # 'a' é de append, para não sobrescrever os dados do arquivo.
    line.puts("Arroz")
    line.puts("Feijão")
    line.print("Azeite")
    line.print(" de ")
    line.print("Oliva")
end

file.each do |line|
    puts line
end