class Owner
  
  @@all = []
  @@count = 0
  
  attr_accessor :cats, :dogs
  attr_reader :name, :species, :say_species
  
  def initialize(name)
    @name = name
    @@all << self
    @@count += 1
    @cats = []
    @dogs = []
  end
  
  def species
    @species = "human"
  end
  
  def say_species
    @say_species = "I am a #{species}."
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
  
  def cats
    Cat.all.select{|cat| cat.owner == self}
  end
  
  def dogs
    Dog.all.select{|dog| dog.owner == self}
  end
  
  def buy_cat(name)
    new_cat = Cat.new(name, self)
    @cats << new_cat
  end
  
  def buy_dog(name)
    new_dog = Dog.new(name, self)
    @dogs << new_dog
  end
  
  def walk_dogs
    self.dogs.each{|dog| dog.mood = "happy"}
  end
  
  def feed_cats
    self.cats.each{|cat| cat.mood = "happy"}
  end
  
  def sell_pets
    self.cats.each do |cat| 
      cat.mood = "nervous"
      cat.owner = nil
    end
    self.dogs.each do |dog|
      dog.mood = "nervous"
      dog.owner = nil
    end
  end
  
  def list_pets
    "I have #{dogs.count} dog(s), and #{cats.count} cat(s)."
  end
  
end