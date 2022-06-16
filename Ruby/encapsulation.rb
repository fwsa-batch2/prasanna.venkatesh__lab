class Encapsule
    @@name
    def gethi()
        p "hi #@@name"
    end

    def sethi(name)
        @@name = name
    end
end

obj = Encapsule.new
obj.sethi("Prasanna")
obj.gethi()