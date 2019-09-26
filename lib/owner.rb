class Owner
  attr_reader :name
 
  @@all = []

   
  def initialize(name)
    @name = name 
    @species = species
    save
  end
  
  def species 
    species = "human"
end 

def say_species
  "I am a #{species}."
end

def save
  @@all << self
end

def self.all
  @@all
end

def self.count 
  @@all.length 
end
  
def self.reset_all
 # @@all = []
 @@all.clear 
end


def cats 
  Cat.all.select {|c| c.owner == self } # c.owner == self is checking if this owner instance ('self') matches the cat from c in the block by looking through cat class with Cat. all and c in the block is a cat instance. " thids is the "has - many relationship"

end

def dogs 
   Dog.all.select {|d| d.owner == self } 
end

   #Make a new instance of the appropriate pet, initializing it with that name and the owner who is purchasing it.
 def buy_cat(name)
   Cat.new(name,self) 
   # Cat.all => [], john.cats => []
   # we need to make a new Cat
   # make sure that self.cats returns [..., new Cat, ...]
  
  # Cat.all => [newCat] john.cats => [newCat]  this is basically what is it. Cat.new("spark","john")
 #  john = Owner.new("John")        .     .        .  Cats.all => []
# john.cats => []

# spark = Cat.new("Spark")    .       . . .   .     Cats.all => [spark]
# john.cats => []
# spark.owner = john

# john.cats => [spark]
end

def buy_dog(name)
  Dog.new(name,self)
end

def walk_dogs
    Dog.all.collect do |dog|
      dog.mood = "happy"
end
end

def feed_cats
  Cat.all.collect do |cat|
    cat.mood = "happy"
end
end

 def sell_pets
# Dog.all.collect {|dog| dog.owner == self } 
#       dog.mood = "nervous"
#   owner = nil
#   end
# end

 @pets.each do |type, name_array|
      name_array.each do |pet|
        pet.mood = "nervous"
      end 
    end
    @pets = {}
  end


