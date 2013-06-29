require_relative 'animal'

class AnimalSpec

  describe 'Animal' do 
    before do
      @a_name = 'animal name' 
      @a_breed = 'french poodle'
      @a_age = 15
      @a_gender = 'female'
      @favorite_toys = ['bone', 'ball']
      @animal = Animal.new(@a_name, @a_breed, @a_age, @a_gender, @favorite_toys)
    end

    it 'has a name' do
      @animal.name.should eq @a_name
    end

    it 'has a breed' do
      @animal.breed.should eq @a_breed
    end

    it 'has an age' do
      @animal.age.should eq @a_age
    end

    it 'has a gender' do
      @animal.gender.should eq @a_gender
    end

    it 'has favorite toys' do
      @animal.favorite_toys.should eq @favorite_toys
    end
  end
end