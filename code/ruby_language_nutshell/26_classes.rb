
# ruby supports classes 

# the "class" and "end" keywords indicate and specify the class body
# "Book" is the class name

class Book
    # attr_accessor -> attribute accessors allow to access the class attributes (aka member variables in C++)
    # members of a class or "Symbols", colon-prefixed identifiers
    attr_accessor :title, :author, :pages  
end

book1 = Book.new()
book1.title = "Harry Potter"
book1.author = "JK Rowling"
book1.pages = 400

puts book1.title


book2 = Book.new()
book2.title = "Lord of the Rings"
book2.author = "Tolkein"
book2.pages = 500

puts book2.author