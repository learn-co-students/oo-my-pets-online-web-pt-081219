class Owner
  
  @@all = []
  
  def initialize(name)
    @name = name 
    self.species
    @@all << self
  end 
  
  def name
    @name 
  end 
  
  def species 
    @species = "human"
  end 
  
  def say_species 
    return "I am a #{@species}."
  end 
  
  def self.all 
    @@all
  end 
  
  def self.count 
    @@all.length 
  end 
  
  def self.reset_all 
    @@all = []
  end 
  
  def cats 
    Cat.all.select {|cat| cat.owner == self }
  end 
  
  def dogs 
    Dog.all.select {|dog| dog.owner == self}
  end 
  
  def buy_cat(name)
    Cat.new(name,self)
  end 
    
  def buy_dog(name)
    Dog.new(name,self)
  end 
  
  def walk_dogs
    self.dogs.each {|dog| dog.mood = "happy"}
  end 
  
  def feed_cats 
    self.cats.each {|cat| cat.mood = "happy"}
  end 
  
  def sell_pets
    self.dogs.select {|dog| dog.mood = "nervous"}
    self.cats.select {|cat| cat.mood = "nervous"}
    self.dogs.select {|dog| dog.owner = nil}
    self.cats.select {|cat| cat.owner = nil}
  end 
    
  def list_pets
    "I have #{self.dogs.length} dog(s), and #{self.cats.length} cat(s)."
  end 
  
  
end