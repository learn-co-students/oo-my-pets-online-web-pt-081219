class Owner
  attr_reader :name, :species

  @@all = []

  def initialize(name, species = "human")
    @name = name
    @species = species
    @@all << self
  end

  def say_species
    return "I am a #{@species}."
  end

  def self.all
    @@all
  end

  def self.count
    @@all.count
  end

  def self.reset_all
    @@all = []
  end

  def cats
    Cat.all.select {|cats| cats.owner == self}
  end

  def dogs
    Dog.all.select {|dogs| dogs.owner == self}
  end

  def buy_cat(cat)
    cat = Cat.new(cat, self)
  end

  def buy_dog(dog)
    dog = Dog.new(dog, self)
  end

  def walk_dogs
    Dog.all.each{|dogs| dogs.mood = "happy"}
  end

  def feed_cats
    Cat.all.each{|cats| cats.mood = "happy"} 
  end

  def sell_pets
    Cat.all.each do |cats|
      cats.mood = "nervous"
      cats.owner = nil
    end
    Dog.all.each do |dogs|
      dogs.mood = "nervous"
      dogs.owner = nil
    end
  end

  def list_pets
    "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
  end
end