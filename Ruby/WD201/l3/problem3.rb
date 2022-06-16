#Problem 3. Print the given list of todos by category. (You haven't learned Hashes yet, so use only arrays.)
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

puts "money:"
for a1 in 0...arrays.length do
    puts arrays[a1]
end
puts "organize:"
for a11 in 0...array1.length do
    puts array1[a11]
end
puts "food:"
for a2 in 0...array2.length do
    puts array2[a2]
end
print "\n\n"