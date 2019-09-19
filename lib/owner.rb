class Owner
  attr_accessor :say_species, :mood, :dog
  attr_reader :name, :species
@@all = []
  def initialize(name)
    @name = name 
    @species = "human"
    @say_species = "I am a human."
    @@all << self
    @mood = "nervous"
  end
  def self.all 
    @@all
  end 
  def self.count 
    all.count 
  end
  def self.reset_all
    all.clear
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
  def buy_cat(name) 
    Cat.new(name, self)
  end 
  def buy_dog(name)
    Dog.new(name,self)
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
# class Owner
#   attr_accessor :pets
#   attr_reader  :name, :species
#   @@all = []
#   @@pets = {:dogs => [], :cats => []}
#   def initialize(name)
#     @name = name 
#     @species = "human"
#   # @pets = {:dogs => [], :cats => []}
#     @@all << self
#   end
  
#   def self.all 
#     @@all 
#   end
#   def say_species
#     "I am a #{@species}."
#   end
#   def self.count 
#     @@all.length
#   end
#   def self.reset_all
#     @@all.clear 
#   end
#   def buy_cat(cat)
#   @@pets[:cats] << Cat.new(cat)
# end
# def buy_dog(dog)
#   @@pets[:dogs] << Dog.new(dog)
# end 

# def walk_dogs
#   @@pets[:dog].each do |dog|
#     dog.moods = "happy"
#   end 
# end 
# def list_pets
#   "I have #{pets[:cats].count} cats. I have #{pets[:dogs].count} dogs."
# end 
# end