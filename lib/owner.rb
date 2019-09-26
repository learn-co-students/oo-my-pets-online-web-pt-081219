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
  Cat.all.select {|c| c.name}
 
end
end




