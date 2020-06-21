
# another example of a class with an "initialize" method and an "instance" method ("member function" in C++)

class Student
    # members of a class or "Symbols", colon-prefixed identifiers
    attr_accessor :name, :major, :gpa  
    def initialize(name, major, gpa)
        puts "Creating object"
        # @ refers to the title attribute :title
        @name = name
        @major = major
        @gpa = gpa
        #puts @this
    end


    def has_honors()
        if (@gpa >= 3.0)
            has_honors = true
        else
            has_honors = false
        end
        
        return has_honors
    end
end


student1 = Student.new("Jim", "Business", 2.6)
student2 = Student.new("Pam", "Art", 3.2)

puts student1.has_honors
puts student2.has_honors
