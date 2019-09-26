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
  @@all 
end

def self.all
  @@all
end
end