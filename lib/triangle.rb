class Triangle
  # write code here
  attr_accessor :a, :b, :c, :sides

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
    @sides = [@a, @b, @c]
  end

  def kind
    # Check length greater than 0
    @sides.each do |length|
      if length <= 0
        raise TriangleError
      end
    # Check sum of any 2 sides greater than third
    if (@a + @b) <= @c || (@a +@c) <= @b || (@b + @c) <= @a
        raise TriangleError
    end
    # Return Triangle Type
    if @a == @b && @b == @c && @a == @c
        return :equilateral
    elsif @a == @b || @b == @c || @a == @c
        return :isosceles
    else
        return :scalene
    end
  end

  class TriangleError < StandardError
    def message
      puts "The sum of the lengths of any two sides of a triangle always exceeds the length of the third side. This is a principle known as the triangle inequality."
    end
  end

end
