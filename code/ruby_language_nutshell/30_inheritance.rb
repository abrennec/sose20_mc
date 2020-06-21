
# ruby also supports the concept of inheritance for class design

class Chef

    def make_chicken
        puts "chef makes chicken"
    end

    def make_salad
        puts "chef makes salad"
    end
    
    def make_special_dish
        puts "chef makes bbq ribs"
    end
end


# the specialized class Italian_Chef inherits all functionality defined in Chef class
# the inheritance relationship is indicated by the inheritance sign "<"
class Italian_Chef < Chef  

    def make_special_dish
        puts "italian chef makes a super special thing"
    end

    def make_pasta
        puts "italian chef makes pasta"
    end
end



chef = Chef.new()
chef.make_chicken
chef.make_special_dish

italien_chef = Italian_Chef.new()
italien_chef.make_salad
italien_chef.make_special_dish
italien_chef.make_pasta