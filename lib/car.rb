require "car/version"

module Car
  class MyCar
    DEFCONST = 10
    DEFCOLOR = 'white'
    DEFDFC = 'electricity'
    attr_accessor :curr_speed, :color
    attr_reader :year, :defects
    def initialize(model,year,color)
      @model = model
      @year = year
      @color = color
      @curr_speed = 0
      @defects = Hash.new
      @count = 1
    end

    # Im using hash not arrays
    def add_defect(defect = DEFDFC)
      @defects[@count] = defect
      @count += 1
    end

    def service_info
      str = @defects.values
      "Defects to be fixed: #{str}"
    end
    def speed_up(speed = DEFCONST)
      # If curr + speed are less or equal then ... else you cant go faster
      ( @curr_speed + speed ) <= 200 ? @curr_speed += speed : "You're going to die"
    end

    def shut_off
      # If curr_speed is not 0 then you cant shut off else shutted off
      @curr_speed != 0 ? "You should brake and then shut_off" : "Shutted off"
    end

    def brake(speed = DEFCONST)
      # If curr_speed - speed is less than 0 then curr_speed = 0 else curr_speed -= speed
      ( @curr_speed - speed ) < 0 ? @curr_speed = 0 : @curr_speed -= speed
    end

    def spray_car(color = DEFCOLOR)
      @color = color
    end

  end
end
