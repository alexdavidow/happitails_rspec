class Client
  def initialize(c_name, c_age, c_gender, animal_list)
    @name = c_name
    @age = c_age
    @gender = c_gender
    @animal_list = animal_list
  end

  def name
    @name
  end 

  def age
    @age
  end

  def gender
    @gender
  end

  def animal_list
    @animal_list
  end

  def remove_animal(index)
    @animal_list.delete_at(index)
  end

  def add_animal(animal)
    @animal_list << animal
  end
end