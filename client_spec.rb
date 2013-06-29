require_relative 'client'

class ClientSpec

  describe 'Client' do
    before do
      @c_name = 'alex'
      @c_age = 26
      @c_gender = 'male'
      @animal_list = ['bonzo', 'kensington']
      @client = Client.new(@c_name, @c_age, @c_gender, @animal_list)
    end 

    it 'has a name' do
      @client.name.should eq @c_name
    end

    it 'has an age' do
      @client.age.should eq @c_age
    end

    it 'has a gender' do
      @client.gender.should eq @c_gender
    end
    it 'has a list of animals' do
      @client.animal_list.should eq @animal_list
    end  
    
    it 'can remove an animal' do
      numAnimals = @animal_list.length
      @client.remove_animal(0)
      @client.animal_list.length.should eq (numAnimals - 1)
    end

    it 'can add an animal' do
      numAnimals = @animal_list.length
      @client.add_animal(0)
      @client.animal_list.length.should eq (numAnimals + 1)
    end
  end
end