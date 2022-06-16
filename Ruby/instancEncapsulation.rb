class Inscap
    @name
    def initialize(name)
        @name = name
    end
    def gethi()
        p "This is my #@name"
    end
end

obj = Inscap.new("Prasanna")
obj.gethi()