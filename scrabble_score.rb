giclass Scrabble
    attr_reader :str
    def initialize(str)
        @str = str
        @s = {
            ['A', 'E', 'I', 'O', 'U', 'L', 'N', 'R', 'S', 'T'] => 1,
            ['D', 'G'] => 2,
            ['B', 'C', 'M', 'P'] => 3,
            ['F', 'H', 'V', 'W', 'Y'] => 4,
            ['k'] => 5,
            ['J', 'X'] => 8,
            ['Q', 'Z'] => 10
        }
    end

    def self.score
        p str = str.slip('')
        ans = 0
       str.each_key do |i|
            @s.each do |k,v|
                if k.include?(i.upcase)
                    ans += v
                end
            end
        end
        p ans
    end

end
sc = Scrabble.new('OXYAC')
sc.score
