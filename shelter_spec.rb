require_relative 'shelter'
require_relative 'animal'
require_relative 'client'

# A client will want to list the animals in the shelter

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
      @new_animal = Animal.new(@a_name, @a_breed, @an_age, @a_gender, @favorite_toys)
      @client_list = [Client.new('alex', 26, 'male', ['Tim', 'Tom'], ['bonzo', 'kensington'])]
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
  

    it 'increments client list by 1 for a new client' do
      numClients = @client_list.length
      @shelter.add_client(0)
      @shelter.client_list.length.should eq (numClients + 1)
    end

    it 'does not change the size of client list' do 
      @shelter.client_list.should eq @client_list
    end
  end  
end


# describe 'shelter#accept_animal' do
  #   context 'for new client' do
  #     it 'increments client list by 1' do
  #       client = Client.new(@c_name, @c_age, @c_gender, @c_kids, @animal_list)
  #       @shelter.add_client(client)
  #       @shelter.client_list.should eq (@client_list + 1)
  #     end
  #   end

  #   context 'for existing client' do
  #     it 'does not change the size of client list' do
  #       @shelter.accept_animal(@new_animal)
  #       @shelter.list_animals.should eq (@animals + 1)
  #     end
  #   end
  # end
