module Other

  def override()
    puts "OTHER override()"
  end

  def implicit()
    puts "OTHER implicit()"
  end

  def Other.altered()
    puts "OTHER altered()"
  end
end

class Child
  include Other

  def override()
    puts "CHILD override()"
  end
  def altered()
    puts "CHILD, BEFORE altered()"
    Other.altered()
    puts "CHILD, AFTER altered()"
  end
end

son = Child.new()

son.implicit()
son.override()
son.altered()
