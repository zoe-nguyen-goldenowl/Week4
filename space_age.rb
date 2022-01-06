class SpaceAge
    earth = 31557600
    SCON = {
        "mercury" => earth*0.2408467 ,
        "venus" => earth*0.61519726 ,
        "earth" => earth,
        "mars" => earth*1.8808158 ,
        "jupiter" => earth*11.862615,
        "saturn" => earth*29.447498,
        "uranus" => earth*84.016846,
        "neptune" => earth*164.79132
    }
    def initialize(secon)
      @secon = secon.to_f
    end
    SCON.each do |k,v|
        define_method("on_#{k}") do
            a = '%.2f' % (@secon/v)
            p a.to_f
        end
    end
    
end
age = SpaceAge.new(2_134_835_688)
age.on_mercury

=begin
Given an age in seconds, calculate how old someone would be on:

    Mercury: orbital period 0.2408467 Earth years
    Venus: orbital period 0.61519726 Earth years
    Earth: orbital period 1.0 Earth years, 365.25 Earth days, or 31557600 seconds
    Mars: orbital period 1.8808158 Earth years
    Jupiter: orbital period 11.862615 Earth years
    Saturn: orbital period 29.447498 Earth years
    Uranus: orbital period 84.016846 Earth years
    Neptune: orbital period 164.79132 Earth years

So if you were told someone were 1,000,000,000 seconds old, you should be able to say that they're 31.69 Earth-years old.
=end