class Shelter
  def initialize(animals, client_list)
    @animals = animals
    @client_list = client_list
  end
  
  def name
    'HappiTails'
  end

  def list_animals
    @animals
  end

  def accept_animal(animal)
    @animals << animal  
  end

  def client_list
    @client_list
  end
end