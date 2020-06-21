
# modules are basically containers that store or combine methods 
# the keywords "module" and "end" indicate and specify the module body
# "Tools" is the name of this module

module Tools

    def sayhi(name)
        puts "hello #{name}"
    end

    def saybye(name)
        puts "bye #{name}"
    end
end

# in order to use the functionality combined in a module, you have to "include" the module in your code
include Tools
Tools.saybye("jimmy")