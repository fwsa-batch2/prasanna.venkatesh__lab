module Prasanna
        def hi(name)
            @name = name
            puts "Hi #@name"
        end
        def bye(name)
            @name = name
            puts "Bye #@name"
        end
end

include Prasanna
@hiName = gets.chomp()
@whatSta = gets.chomp()
if @whatSta == "hi" or @whatSta == "Hi"
Prasanna.hi(@hiName)
elsif @whatSta == "bye" or @whatSta == "Bye"
Prasanna.bye(@hiName)
end