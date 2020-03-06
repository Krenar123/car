# TDD first we test and then write code

RSpec.describe Car do
  # Im gonna create here

  # Testing class MyCar
  describe Car::MyCar do
    # I know that i should create this in every 'it' method but..
    # I created object here so i can use the same ex for all tests
    let(:car) { Car::MyCar.new('Mercedes', 2019, 'red') }
    let(:defects) { ['water pump', 'oil change'] }

    context 'When initializing car object' do
      # This one and to eq(0) we did in class
      it ' should be instance of Car::MyCar' do
        expect(car).to be_instance_of(Car::MyCar)
      end

      it ' should  give 0 for curr_speed' do
        expect(car.curr_speed).to eq(0)
      end
    end

    context 'When using method speed_up(100)' do
      it '\'s going to return curr_speed+100' do
        # Using change matcher with objects ...
        expect { car.speed_up(100) }.to change(car, :curr_speed).by(100)
      end
      it '\'s going to return true (Its between 0,200)' do
        car.speed_up(100)
        expect(car.curr_speed).to be_between(0, 200).inclusive
      end
    end

    context 'When using method shut_off' do
      it ' should\'nt be curr_speed != 0' do
        # We should use brake method (200) to work this one
        # If we delete car.brake it will be red
        car.brake(200)
        car.shut_off
        expect(car.curr_speed).not_to be > (0)
      end
    end

    context 'When using method spray_car(\'red\')' do
      it ' should give color = \'red\'' do
        car.spray_car('red')
        expect(car.color).to eq('red')
      end
    end

    context 'When using speed_up and spray_color withour parameter' do
      it 'has to give 10 for curr_speed for speed_up()' do
        expect { car.speed_up }.to change(car, :curr_speed).by(10)
      end
      it 'has to give white color for spray_car()' do
        expect { car.spray_car }.to change(car, :color).to('white')
      end
    end

    context 'When using add_defect method' do
      it 'should not be empty defect - hash' do
        car.add_defect(defects[0])
        expect(car.defects).not_to be_empty
      end

      it 'should equal to eletricity if we use without parameters' do
        car.add_defect
        expect(car.defects.values[0]).to eq(Car::MyCar::DEFDFC)
      end
    end

    context 'When using service_info ' do
      it 'has to return all defects ' do
        for i in 0..defects.length-1 do
          car.add_defect(defects[i])
        end
        expect(car.service_info).to eq('Defects to be fixed: '+defects.to_s)
      end
    end
  end
end

# There are several way to create describe Car::MyCar
# I can create here with RSpec.describe Car::MyCar do ...

# I can create new file same that we did in class mycar_spec.rb