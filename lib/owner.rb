class Owner
  attr_reader :name, :species, :dogs, :cats
  @@all = []
  
  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
    @cats = []
    @dogs = []
  end
  
  def say_species
    return "I am a human."
  end
  
  def self.all
    @@all
  end
  
  def self.count
    @@all.length
  end
  
  def self.reset_all
    @@all.clear
  end
  
  def buy_cat(name)
    cat = Cat.new(name, self)
   
  end
  
  def buy_dog(name)
    dog = Dog.new(name, self)
   
  end
  
  def walk_dogs
    @dogs.each {|dog| dog.mood="happy"}
  end
  
  def feed_cats
    @cats.each {|cat| cat.mood="happy"}
  end

  def sell_pets
    @cats.each{|cat| 
    cat.mood="nervous"
    cat.owner=nil
    }
    @cats = []
    @dogs.each{|dog| 
    dog.mood="nervous"
    dog.owner=nil
    }
    @dogs = []
  end
  
  def list_pets
    return "I have #{@dogs.count} dog(s), and #{@cats.count} cat(s)."
  end
  
    
end