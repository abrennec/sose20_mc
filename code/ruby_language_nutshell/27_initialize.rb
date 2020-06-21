
# classes can also specify certain "constructor" (in C++) methods called "initialize" in ruby
# that can be called to specify the class during initialization (see below)

class Book
    # members of a class or "Symbols", colon-prefixed identifiers
    attr_accessor :title, :author, :pages  
    def initialize(title, author, pages)
        puts "Creating object"
        # "@" sign refers to the title attribute :title
        @title = title
        @author = author
        @pages = pages
        #puts @this
    end
end


book1 = Book.new("Harry Potter", "JK Rowling", 400)
# book1 = Book.new("Mike") # calls initialize method
# book1.title = "Harry Potter"
# book1.author = "JK Rowling"
# book1.pages = 400

puts book1.title

book2 = Book.new("Lord of the Rings", "Tolkein", 500)
# book2 = Book.new("Bill") # calls initialize method
# book2.title = "Lord of the Rings"
# book2.author = "Tolkein"
# book2.pages = 500

puts book2.author