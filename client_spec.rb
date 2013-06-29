require_relative 'client'

class ClientSpec

  describe 'Client' do
    before do
      @c_name = 'alex'
      @c_age = 26
      @c_gender
      @client = Client.new(@c_name, @c_age, @c_gender)
    end 

    it 'has a name' do
      @client.name.should eq @c_name
    end

    it 'has an age' do
      @client.age.should eq @c_age
    end

    it 'has a gender'
    it 'has a list of animals'  
  end
end