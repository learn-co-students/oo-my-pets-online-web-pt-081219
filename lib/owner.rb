class Owner
  
  attr_reader :name, :species
  attr_accessor :cats, :dogs
  @@all = []
  
  @@count = 0
  
  def initialize(name)
    @name = name
    @species = "human"
    @@count += 1
    @@all << self
    @dogs = []
    @cats = []
  end
  
  def self.all
    @@all
  end
  
  def self.count
    @@count
  end
  
  def self.reset_all
    @@all.clear
    @@count = 0
  end
  
  def dogs
    Dog.all.select do |dog|
      dog.owner == self
    end
  end
  
  def cats
    Cat.all.select do |cat|
      cat.owner == self
    end
  end
  
  def buy_cat(cat_name)
    new_cat = Cat.new(cat_name, self)
    @cats << new_cat
  end
  
  def buy_dog(dog_name)
    new_dog = Dog.new(dog_name, self)
    @dogs << new_dog
  end
  
  def say_species
    "I am a #{species}."
  end
  
  def walk_dogs
   self.dogs.each do |dog|
      dog.mood = 'happy'
    end
  end
  
  def feed_cats
    self.cats.each do |cat|
      cat.mood = 'happy'
    end
  end
  
  def sell_pets
    self.cats.each do |cat|
      cat.mood = 'nervous'
      cat.owner = nil
    end
    
    self.dogs.each do |dog|
      dog.mood = 'nervous'
      dog.owner = nil
    end
  end
  
  def list_pets
    "I have #{dogs.count} dog(s), and #{cats.count} cat(s)."
  end
end