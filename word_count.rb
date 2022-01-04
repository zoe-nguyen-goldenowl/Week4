class Phrase
    attr_reader :str
    def initialize(str)
        @str = str
    end

    def count    
        
        words = str.split(/[,$||\s]/)
      p = words.reject(&:empty?)
        p.group_by(&:itself).transform_values(&:size)
    end
end
ph = Phrase.new("one fish two fish red fish blue fish")
p ph.count
