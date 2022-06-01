module Prasanna
        def man(name)
            @name = name
            puts "hi #@name"
        end
end

include Prasanna
@hiName = gets
Prasanna.man(@hiName)