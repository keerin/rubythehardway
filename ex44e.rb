# This uses class 'Other' instead of class 'Parent' as in ex44d.rb
# This is because the class 'Child' does not have an
# is-a relationship with the base class, it has a has-a relationship
# Here we have a Child has-a Other relationship instead.

class Other

  def override()
    puts "OTHER override"
  end

  def implicit()
    puts "OTHER implicit"
  end

  def altered()
    puts "OTHER altered"
  end
end
# All of the above is fairly obvious, we define a class 'Other' which has all of the
# functions we may want to use in another class.

class Child

  def initialize()
    @other = Other.new()
  end
  # This confused me for a minute.
  # We are setting a function that initializes the use of the Other class.
  # We use @other to allow us to use it in other functions.
  # We set @other to a new instance of the 'Other' class, then end.

  def implicit()
    @other.implicit()
  end
# Here we are using the @other variable we set above, and calling the
# implicit function from it. This will just print out whatever is inside Other

  def override()
    puts "CHILD override"
  end
# This one uses the same funtion name as Other does, so will override it.

  def altered()
    puts "CHILD, BEFORE altered"
    @other.altered()
    puts "CHILD, AFTER altered"
  end
end

son = Child.new()
# son variable is a new instance of the Child class

son.implicit()
son.override()
son.altered()
# Finally we throw out all of the contents of son's different functions
