require "car/version"

module Car
  class MyCar
    attr_accessor :curr_speed, :color
    attr_reader :year
    def initialize(model,year,color)
      @model = model
      @year = year
      @color = color
      @curr_speed = 0
    end

    def speed_up(speed)
      # If curr + speed are less or equal then ... else you cant go faster
      ( @curr_speed + speed ) <= 200 ? @curr_speed += speed : "You're going to die"
    end

    def shut_off
      # If curr_speed is not 0 then you cant shut off else shutted off
      @curr_speed != 0 ? "You should brake and then shut_off" : "Shutted off"
    end

    def brake(speed)
      # If curr_speed - speed is less than 0 then curr_speed = 0 else curr_speed -= speed
      ( @curr_speed - speed ) < 0 ? @curr-speed = 0 : @curr_speed -= speed 
    end

    def spray_car(color)
      @color = color
    end
    
  end
end
