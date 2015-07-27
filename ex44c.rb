class Parent
  def altered()
    puts "PARENT altered()"
  end
end
# Defines the Parent class, with one simple function, 'altered'
# which puts some indentifying text

class Child < Parent
  def altered()
    puts "CHILD, BEFORE PARENT altered()"
    super()
    puts "CHILD, AFTER PARENT altered()"
  end
end
# Defines the Child class as a subclass of the Parent class
# Inside the 'altered' function, we are outputting some identifying text
# then run the super() function.

# calling super() inside a subclass (Child) will ask the base class (Parent)
# to invoke a function of the same name inside the subclass.
# You amy want to have a "bike" base class, for example, but need a subclass
# for trikes, which have three wheels. In this case you would call super
# for the 'wheels' function, and set it as 3 instead of the default, which would be 2
dad = Parent.new()
son = Child.new()
# Set 'dad' and 'son' variables to new instances of Parent and hHild respectively

dad.altered()
son.altered()
# print out the contents of 'dad' and 'son'
