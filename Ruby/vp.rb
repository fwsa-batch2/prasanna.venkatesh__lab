class Encap
    @@country
    def get_meth
p "This my  #@@country"
    end
    def set_meth(country)
    @@country =country
    end
    
end
obj =Encap.new
obj.set_meth("India")
obj.get_meth

