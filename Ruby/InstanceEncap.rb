class Inst_encap
    @name
    def initialize(name)
        @name = name
    end
    def get_meth
        p "my name is #@name"
    end
    
end
obj = Inst_encap.new("prasana") 
obj.get_meth()