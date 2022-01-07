class Triangle
    def initialize (arr)
      @arr = arr
    end         
  
    def arr
      @arr.max < @arr.min(2).reduce(:+) && not(@arr.include?(0)) ? @arr : []
    end

    def equilateral?
      arr.uniq.count == 1 ? true : false
    end

    def isosceles?
      arr.uniq.count.between?(1,2) ? true : false        
    end

    def scalene?
      arr.uniq.count == 3 ? true : false 
    end
  end

triangle = Triangle.new([2, 2, 2])
p triangle.isosceles?

=begin
Determine if a triangle is equilateral, isosceles, or scalene.
An equilateral triangle has all three sides the same length.
An isosceles triangle has at least two sides the same length. (It is sometimes specified as having exactly two sides
the same length, but for the purposes of this exercise we'll say at least two.)
A scalene triangle has all sides of different lengths.

Note

For a shape to be a triangle at all, all sides have to be of length > 0, and the sum of the lengths of any two sides must
 be greater than or equal to the length of the third side. See Triangle Inequality.
Dig Deeper
The case where the sum of the lengths of two sides equals that of the third is known as a degenerate triangle - it has 
zero area and looks like a single line. Feel free to add your own code/tests to check for degenerate triangles.

=end