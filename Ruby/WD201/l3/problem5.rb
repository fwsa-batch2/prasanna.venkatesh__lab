#Problem 5. Given this list of todos, create a Hash keyed by category, whose value is an array containing all the todos in that category. The keys of the Hash must be a symbol.

todos = [
    ["Send invoice", "money"],
    ["Clean room", "organize"],
    ["Pay rent", "money"],
    ["Arrange books", "organize"],
    ["Pay taxes", "money"],
    ["Buy groceries", "food"]
  ]

  arrays = []
  array1=[]
  array2 = []

for i in 0...todos.length do
    for j in 0...todos[i].length do
        if todos[i][j] == "money"
            arrays.push(todos[i][0])
        end
        if todos[i][j] == "organize"
            array1.push(todos[i][0])  
        end
        if todos[i][j] == "food"
            array2.push(todos[i][0])  
        end
    end
end

objkv = {}
objkv[:money] = arrays
objkv[:organize] = array1
objkv[:food] = array2

print objkv
print "\n\n"