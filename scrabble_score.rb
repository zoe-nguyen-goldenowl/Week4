class Scrabble
    attr_reader :str
    def initialize(str)
        @str = str
        @s = {
            ['A', 'E', 'I', 'O', 'U', 'L', 'N', 'R', 'S', 'T'] => 1,
            ['D', 'G'] => 2,
            ['k'] => 5,
            ['B', 'C', 'M', 'P'] => 3,
            ['F', 'H', 'V', 'W', 'Y'] => 4,
            ['J', 'X'] => 8,
            ['Q', 'Z'] => 10
        }
    end
    
    def score
        str = @str.split('')
        ans = 0
       str.each do |i|
            @s.each do |k,v|
                if k.include?(i.upcase)
                    p v
                    ans += v
                end
            end
        end
        p ans
    end
end
sc = Scrabble.new('alacrity')
sc.score






=begin
Letter                           Value
A, E, I, O, U, L, N, R, S, T       1
D, G                               2
B, C, M, P                         3
F, H, V, W, Y                      4
K                                  5
J, X                               8
Q, Z                               10

"cabbage" should be scored as worth 14 points:

    3 points for C
    1 point for A, twice
    3 points for B, twice
    2 points for G
    1 point for E

And to total:

    3 + 2*1 + 2*3 + 2 + 1
    = 3 + 2 + 6 + 3
    = 5 + 9
    = 14

=end