class Triangle
  attr_accessor :sidea, :sideb, :sidec
  
  def initialize (sidea, sideb, sidec)
    @sidea= sidea
    @sideb=sideb
    @sidec=sidec
  end
   
  def kind 
    if sidea <=0 || sideb <= 0 || sidec <= 0 || (sidea + sideb) <= sidec || (sidea+ sidec) <= sideb || (sideb+sidec) <= sidea
      raise TriangleError
    elsif  sidea == sideb && sidea == sidec 
      :equilateral
    elsif sideb== sidec && sideb != sidea && sidec !=sidea
      :isosceles
    elsif sidea == sideb && sidea != sidec && sideb !=sidec
      :isosceles
    elsif sidea== sidec && sideb !=sidea && sidec != sideb
       :isosceles
    else
      :scalene
    end
  end

  class TriangleError < StandardError
  end
end