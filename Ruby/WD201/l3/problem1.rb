#Problem 1. Given a nested array of first names and last names, return a new array with the full names.
names = [["Jhumpa", "Lahiri"], ["J. K", "Rowling"], ["Devdutt", "Pattanaik"]]
array = []

for i in 0...names.length do
   array.push(names[i].join(" "))
end

print "#{array}\n\n"