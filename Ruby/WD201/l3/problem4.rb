#Problem 4. Given two arrays books and authors, merge them into a single Hash. The keys of the Hash must be the lower-cased firstname of the authors, and must be symbols.
books = ["Design as Art", "Anathem", "Shogun"]
authors = ["Bruno Munari", "Neal Stephenson", "James Clavell"].downcase

authorkey = []

for o in 0...authors.length do
    authorkey.push(authors[o].split[0])
end
authorkey.map! { |x| x.to_sym }
obj = {}
for k in 0...authors.length do
    obj[authorkey[k]] = books[k]
end

print obj
print "\n\n"