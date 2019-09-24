require 'pry-byebug'

class Owner
  attr_reader :name, :species
  attr_accessor :cats, :dogs

  @@all = []
  
  def initialize(name, species = "human")
    @name = name
    @species = species
    # Pushes each new Owner into a collection of Owners upon creation
    @@all << self
    # Creates an empty collection of Cats and Dogs for each Owner upon creation
    @cats = []
    @dogs = []
  end

  def say_species
    "I am a " + @species + "."
  end

  def self.all
    # Returns all Owner objects
    @@all
  end

  def self.count
    # Counts how many Owner objects there are
    @@all.length
  end

  def self.reset_all
    # Clears all existing Owner objects from the Collection of Owners
    @@all.clear
  end

  def buy_cat(cat_name)
    # binding.pry
    if cat_name.is_a? Cat
      @cats < cat_name
    else
      # Creates a new Cat with this Owner, and adds it to the Owner's @cats roster
      Cat.new(cat_name, self)
    end
  end

  def buy_dog(dog_name)
    Dog.new(dog_name, self)
  end

  def walk_dogs
    @dogs.each do |dog|
      dog.mood = "happy"
    end
  end

  def feed_cats
    @cats.each do |cat|
      cat.mood = "happy"
    end
  end

  def sell_pets
    @cats.each do |cat|
      cat.mood = "nervous"
      cat.owner = nil
    end

    @dogs.each do |dog|
      dog.mood = "nervous"
      dog.owner = nil
    end
    @cats.clear
    @dogs.clear
  end

  def list_pets
    "I have #{dogs.length} dog(s), and #{cats.length} cat(s)."
  end
end