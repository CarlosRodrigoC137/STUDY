require 'net/http'

example = Net::HTTP.get('example.com', '/index.html')

# 'w' é de escrever (write).
File.open('example.html', 'w') do |line|
    line.puts(example)
end
