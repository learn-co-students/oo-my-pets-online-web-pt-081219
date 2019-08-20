class Owner 
  attr_accessor :cats, :dogs, :pets
  attr_reader :name, :species
  @@all = []
  def initialize(name)
    @cats = [] 
    @dogs = []
    @name = name
    @species = "human" 
    @@all << self
  end
  
  def say_species
    "I am a human."
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

  def buy_cat(cat)
    new_cat = Cat.new(cat,self)
  end
  
   def buy_dog(dog)
      new_dog = Dog.new(dog,self)
   end 
   
   def walk_dogs
      self.dogs.each{|el| el.mood = "happy"}
   end 
   
   def feed_cats 
     self.cats.each{|el| el.mood = "happy"}
   end 
   
   def sell_pets  
     @pets = [dogs,cats].flatten 
     @pets.each {|el| el.mood = "nervous"; el.owner = nil} 
     @dogs.clear 
     @cats.clear
     
   end 
   
   def list_pets
    
    "I have #{dogs.length} dog(s), and #{cats.length} cat(s)."
   end
   
end