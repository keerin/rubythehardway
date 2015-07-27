# Override Explicitly
# You may want a subclass to behave differently, so you will want to copy the base class, and the override certain functions or variables when they are set for that subclass. You can do this by just defining a function with the same name.

class Parent
    
    def override()
        puts "PARENT override()"
    end
end

class Child < Parent
    def override()
        puts "CHILD override()"
    end
end

dad = Parent.new()
son = Child.new()

dad.override()
son.override()
