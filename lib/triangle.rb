require 'pry'

class Triangle
  attr_accessor :kind, :sides
  attr_reader :s1, :s2, :s3
  
  def initialize (side1, side2, side3)
    @s1 = side1
    @s2 = side2
    @s3 = side3
    @sides = [side1, side2, side3]
  end 
  
  def kind
    @sides.uniq!
    if @s2 + @s3 <= @s1 || @s1 + @s3 <= @s2 || @s1 + @s2 <= @s3
      raise TriangleError
    elsif sides.length == 1
      self.kind = :equilateral 
    elsif sides.length == 2 
      self.kind = :isosceles
    else sides.length == 3
      self.kind = :scalene
    end 
  end
  
  class TriangleError < StandardError
  end 
end
