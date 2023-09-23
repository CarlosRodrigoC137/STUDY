require 'net/http'

# o https permite se conectar aos sites de maneira mais segura e criptografada.

https = Net::HTTP.new('reqres.in', 443)
#pra fazer as chamadas https
https.use_ssl = true

response = https.get("/api/users")

#status code
#status message
# body (json)

puts response.code
puts response.message
puts response.body