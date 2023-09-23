require 'nokogiri'
require 'net/http'

https = Net::HTTP.new('www.onebitcode.com', 443)
# pra fazer as chamadas http
https.use_ssl = true

response = https.get("/")

doc = Nokogiri::HTML(response.body)

# doc at busca o conteúdo no primeiro ponto encontrado de doc
h1 = doc.at('h1')
puts h1.content

puts "---- Space ----"

# doc search devolve um array com todos os resultados em 'span'
doc.search('span').each do |a|
    puts a.content
end

