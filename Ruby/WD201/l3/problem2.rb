#Problem 2. Given two arrays books and authors, merge them and print who wrote which book.
books = ["Design as Art", "Anathem", "Shogun"]
authors = ["Bruno Munari", "Neal Stephenson", "James Clavell"]

for i in 0...books.length do
    puts " #{books[i]} was written by #{authors[i]}"
end
print "\n\n"