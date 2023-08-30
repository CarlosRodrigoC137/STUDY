result = ""

loop do
    print "Calculator for two Numbers\n"
    print "\n"
    print "Press '0' if you want to exit\n"
    print "Press '1' if you want to contine\n"
    option = gets.chomp.to_i
    break if option != 1

    print "Choose which math operation you want: (+,-,*,/,%) \n"
    operator = gets.chomp.to_str

    if operator != "+" && operator != "-" && operator != "*" && operator != "/"  && operator != "%"
        print "Invalid Operator.\n"
        break
    end

    print "Choose fist number: \n"
    first = gets.chomp.to_i
    print "Choose second number: \n"
    second = gets.chomp.to_i

    case operator
        when "+"
            result = first + second
        when "-"
            result = first - second
        when "*"
            result = first * second
        when "/"
            result = first / second
        when "%"
            result = first % second
    end
    print "The answer is #{result}\n\n"
end

print "Thank You for Testing :D\n"