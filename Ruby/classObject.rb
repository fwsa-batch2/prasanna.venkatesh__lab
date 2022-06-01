class Book 

   def get_title(title)
            @title =  title
            puts "#@title"
    end
end

obj = Book.new
# obj.initialize("title")
obj.get_title("Prasanna")