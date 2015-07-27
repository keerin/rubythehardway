# 1. Actions on the child imply an action on the parent
# 2. Actions on the child verride actions on the parent
# 3. Actions on the child alter the action on the parent

#Implicit Inheritance
# - define a function in the parent but NOT the child

class Parent
    
    def implicit()
        puts "PARENT implicit()"
    end
end
# Define the Parent class, which contains a simple function to output a line of text called 'implicit'.

class Child < Parent
end
# Child is an empty class, inheriting everything from the Parent class

dad = Parent.new()
# Create new instance of Parent class, called 'dad'
son = Child.new()
# Create new instance of Child class, called 'son'

dad.implicit()
# Call the implicit function defined in the Parent class on the 'dad' instance of the Parent class (a base class)
son.implicit()
# Call the implicit function implicitly inherited from the Parent class for the 'son' instance of the Child class (a subclass)
