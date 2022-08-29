class Triangle
  # write code here
  
  attr_reader :side1, :side2, :side3

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def is_triangle
    if side1 && side2 && side3 > 0
      check1 = true
    else check1 = false
    end

    if side1 + side2 > side3 && side1 + side3 > side2 && side2 + side3 > side1
      check2 = true
    else check2 = false
    end

    if check1 && check2 == true
      "Triangle"
    else "Not triangle"
    end
  end
  
  def kind 
    if is_triangle == "Triangle"
      if side1 == side2 && side1 == side3
        :equilateral
      elsif side1 == side2 || side1 == side3 || side2 == side3
        :isosceles
      else
        :scalene
      end
    else
      raise TriangleError
    end
  end

  class TriangleError < StandardError
  end

end
