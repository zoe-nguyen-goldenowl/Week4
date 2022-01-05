class Clock
    attr_reader :hour 
    attr_reader :minute
    def initialize(hour: 0 , minute: 0)
      @hour = hour
      @minute = minute
        
    end

    def hour
        date = 0
     @minute += @hour*60
      date = @minute/1440
      @minute = @minute - date*1440
      @hour = @minute/60
       @minute = @minute -@hour*60
     if @minute == 60
        @hour =@hour + 1
        @minute = 0
    elsif @minute > 60
        @hour += @minute/60
        @minute = @minute - (@minute/60)*60
    else
        @minute
    end

         @hour
         @minute
         p "#{form(@hour)}:#{form(@minute)}"
    end

    def form(num)
        num.to_s.rjust(2,"0")
    end

    def to_s
       hour
    end
end
Clock.new(hour: 6, minute: 41).to_s

=begin
Implement a clock that handles times without dates.
You should be able to add and subtract minutes to it.
Two clocks that represent the same time should be equal to each other.  
=end