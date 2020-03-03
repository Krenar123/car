# TDD first we test and then write code

RSpec.describe Car do
  # Im gonna create here 

  # Testing class MyCar
  describe Car::MyCar do

    # I know that i should create this in every 'it' method but..
    # I created object here so i can use the same ex for all tests
    car = Car::MyCar.new("Mercedes",2019,"white")

    context "When initializing car object" do

      # This one and to eq(0) we did in class
      it " should be instance of Car::MyCar" do
        expect(car).to be_instance_of(Car::MyCar)
      end

      it " should  give 0 for curr_speed" do

        expect(car.curr_speed).to eq(0)
      end
    end


    context "When using method speed_up(100)" do
      
      it "'s going to return curr_speed+100" do
        # Using change matcher with objects ...    
        expect{car.speed_up(100)}.to change(car, :curr_speed).by(100)
      end

      it "'s going to return true (Its between 0,200)" do
        car.speed_up(100)
        expect(car.curr_speed).to be_between(0,200).inclusive
      end

    end

    context "When using method shut_off" do
      it " should'nt be curr_speed != 0" do
        # We should use brake method (200) to work this one
        # If we delete car.brake it will be red
        car.brake(200)
        car.shut_off
        expect(car.curr_speed).not_to be > (0)
      end
    end

    context "When using method spray_car('red')" do
      it " should give color = 'red'" do
        car.spray_car('red')
        expect(car.color).to eq('red')
      end
    end
  end
end

# There are several way to create describe Car::MyCar
# I can create here with RSpec.describe Car::MyCar do ...

# I can create new file same that we did in class mycar_spec.rb