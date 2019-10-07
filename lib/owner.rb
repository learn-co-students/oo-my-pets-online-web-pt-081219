class Owner
  
  attr_reader :name, :species
  
  @@all = []
  
  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def say_species
    "I am a human."
  end
  
  def self.count
    @@all.count
  end
  
  def self.reset_all
    @@all.clear
  end
  
  def cats
    Cat.all.select {|cat| cat.owner == self}
  end
  
  def dogs
    Dog.all.select {|dog| dog.owner == self}
  end
  
  def buy_cat
    #can buy a cat that is an instance in Cat Class
    #knows about its cats
  end
  
  def buy_dog
    #same for dog
  end
  
  def walk_dogs
    #mood happy
  end
  
  def feed_cats
    #mood happy
  end
  
  def sell_pets
    #can sell all pets
    #mood nervous
    #leaves them without owner
  end
  
  def list_pets
    #list all pets
  end
  
end