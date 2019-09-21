require 'pry'
class Owner
  # code goes here
  attr_reader :name, :species, :cat
  attr_writer 
@@all = []


  def initialize(name)
    @name = name
    @species = "human"
    @species
    @@all << self
    @cat = []
    
  end

  def say_species
    "I am a #{self.species}."
  end

    def self.all
      @@all
    end

    def self.count
      @@all.count
    end

    def self.reset_all
      @@all.clear
    end

    def cats
      Cat.all.select do |cat|
        cat.owner == self 
    end
  end

    def dogs
      Dog.all.select do |dog|
        dog.owner == self
    end
end

def buy_cat(cat_name)
  Cat.new(cat_name, self)
end

def buy_dog(dog_name)
  Dog.new(dog_name, self)
end

def walk_dogs
  Dog.all.select do |dog|
    dog.mood = "happy"
end
end

def feed_cats
  Cat.all.select do |cat|
    cat.mood = "happy"
  end
end

def sell_pets
  Dog.all.select do |dog|
    dog.mood = "nervous"
    dog.owner = nil
end

Cat.all.select do |cat|
  cat.mood = "nervous"
  cat.owner = nil
end
end

def list_pets
  "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
end

end