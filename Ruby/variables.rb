$mumber = "Venkatesh" #global variable

class INSTANCEVARIABLE
    @@No_change = 0 #class variable
    @number = 10 #Instance variable
    
    def Students(name,age)
        @stu_name=name #local variable
        @stu_age=age
    end

    def buf
        puts "Name is #@stu_name"
        puts "Age is #@stu_age"
        puts "mumber is #$mumber"
        puts "change is #@@No_change"
    end
    puts "number is #@number"
end

obj = INSTANCEVARIABLE.new
obj.Students("Prasanna", 9)
obj.buf