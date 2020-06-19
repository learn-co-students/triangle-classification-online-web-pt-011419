class Triangle
  def initialize(side1, side2,side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def kind
    if (@side1 <= 0) || (@side2 <= 0) || (@side3 <= 0) 
      raise TriangleError # raise error if any side is less than 0
    elsif (@side1+@side2 <= @side3) || (@side1+@side3 <= @side2) || (@side2+@side3 <= @side1)
      raise TriangleError # raise error if any two sides combined are shorter than the third side
    else
      if (@side1 == @side2) && (@side2 == @side3)
        :equilateral # defines type eqilateral, all sides the same length
      elsif (@side1 == @side2) || (@side2 == @side3) || (@side1 == @side3)
        :isosceles # defines type isosceles, two sides the same length
      elsif (@side1 != @side2) && (@side2 != @side3) && (@side1 != @side3)
        :scalene # defines type scalene, no sides the same length
      end
    end
  end
  
  class TriangleError < StandardError
  end
end

