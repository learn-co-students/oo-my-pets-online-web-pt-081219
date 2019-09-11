class Owner
  attr_accessor
  attr_reader :name, :species
  @@all = []
  
  #in class methods
  def initialize(name)
    @name = name
    @species = "human"
    save
  end
  def save
    @@all << self
  end
  def self.all 
    @@all 
  end
  def self.count
    self.all.length
  end
  def self.reset_all
    self.all.clear
  end
  def say_species
    p "I am a #{@species}."
  end
  
  def buy_cat(name)
    cat = Cat.new(name, self)
  end
  def cats
    Cat.all.select{|cat| cat.owner == self}
  end
  def feed_cats
    self.cats.collect{|cat| cat.mood = "happy"}
  end
  
  def buy_dog(name)
    dog = Dog.new(name, self)
  end
  def dogs
    Dog.all.select{|dog| dog.owner == self}
  end
  def walk_dogs
    self.dogs.collect{|dog| dog.mood = "happy"}
  end
  
  def sell_pets
    self.cats.collect{|cat| 
      cat.mood = "nervous"
      cat.owner = nil
    }
    self.dogs.collect{|dog| 
      dog.mood = "nervous"
      dog.owner = nil
    }
  end
  def list_pets
    p "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
  end
end