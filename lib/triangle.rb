class Triangle

  attr_accessor :side1, :side2, :side3

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def kind
    if @side1 <= 0 || @side2 <= 0 || @side_3 <= 0
      begin
        raise TriangleError
      rescue TriangleError => error
          puts error.message
      end
    elsif @side1 + @side2 <= @side3 || @side1 + @side3 <= @side2 || @side2 + @side3 <= @side1
      begin
        raise TriangleError
      rescue TriangleError => error
          puts error.message
      end
    else
      if @side1 != @side2 && @side2 != @side3 && @side1 != @side3
        :scalene
      elsif @side1 == @side2 || @side2 == @side3 || @side1 == @side3
        :isosceles
      elsif @side1 == @side2 && @side2 == @side3
        :equilateral
      end
    end
  end

  class TriangleError < StandardError
    def message
      "you must give a valid triangle!"
    end
  end
end
