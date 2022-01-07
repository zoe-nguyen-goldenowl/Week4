class Squares
    def initialize(n)
        @num = 1..n
    end

    def square_of_sum
        @num.reduce(&:+)**2
    end

    def sum_of_squares
        @num.map{|i| i**2}.reduce(&:+)
    end

    def difference
        square_of_sum - sum_of_squares
    end
end
 Squares.new(3).sum2

=begin

Find the difference between the square of the sum and the sum of the squares of the first N natural numbers.
The square of the sum of the first ten natural numbers is (1 + 2 + ... + 10)² = 55² = 3025.
The sum of the squares of the first ten natural numbers is 1² + 2² + ... + 10² = 385.
Hence the difference between the square of the sum of the first ten natural numbers and the sum of the squares of 
the first ten natural numbers is 3025 - 385 = 2640.
You are not expected to discover an efficient solution to this yourself from first principles; research is allowed,
 indeed, encouraged. Finding the best algorithm for the problem is a key skill in software engineering.
  
=end