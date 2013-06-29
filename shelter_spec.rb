require_relative 'shelter'
require_relative 'animal'
require_relative 'client'

class ShelterSpec
  describe 'Shelter' do 
    before do
      # @sh_name = 'HappiTails'
      # @list_animals = ['chloe', 'bonzo']
      @a_name = 'animal name' 
      @a_breed = 'french poodle'
      @a_age = 15
      @a_gender = 'female'
      @favorite_toys = ['bone', 'ball']
      @poodle = Animal.new(@a_name, @a_breed, @a_age, @a_gender, @favorite_toys)
      @new_animal = Animal.new("Rocky", @a_breed, @an_age, @a_gender, @favorite_toys)
      @client_list = [Client.new('alex', 26)]
      @shelter = Shelter.new([@poodle], @client_list)
    end

    it 'has a name' do
      @shelter.name.should eq 'HappiTails'
    end

    it 'has a list of animals' do
      @shelter.list_animals.should eq [@poodle]
    end

    it 'accepts animal for adoption' do
      @shelter.accept_animal(@new_animal)
      @shelter.list_animals.should eq [@poodle, @new_animal]
    end

    it 'has a list of clients' do
      @shelter.client_list.should eq @client_list
    end
  end

  describe 'shelter#accept_animal' do
    context 'for new client' do
      it 'increments client list by 1'
    end

    context 'for existing client' do
      it 'does not change the size of client list'
    end
  end
end