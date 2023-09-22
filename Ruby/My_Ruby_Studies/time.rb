#A classe Time já está incluída naturalmente no Ruby

puts time = Time.now
puts time.class
puts time.year
puts time.month
puts time.day
puts time.hour
puts time.min
puts time.sec

system "clear"

# Método STRFTIME para formatação de da classe TIME
puts time.strftime("%d/%m/%y")
puts time.strftime("%d")
puts time.saturday?
puts time.friday?