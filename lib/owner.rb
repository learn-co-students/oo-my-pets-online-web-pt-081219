class Owner
  attr_reader :name, :species 
 @@all = []
  def initialize(name, species = "human")
    @name = name 
    @species = "human"
    @@all << self 
  end 

  def say_species 
    return "I am a human."
  end 

  def self.all 
    @@all
  end 

  def self.count 
    @@all.uniq.count 
  end 

  def self.reset_all 
    @@all.clear 
  end 
  
  def buy_cat(name)
    cat = Cat.new(name, self)
  end 

  def buy_dog(name)
    dog = Dog.new(name, self)
  end 

  def cats 
    Cat.all.select {|cat| cat.owner == self}
  end 

  def dogs 
    Dog.all.select {|dog| dog.owner == self}
  end 

  def walk_dogs 
    Dog.all.each do |dog| 
      dog.mood = "happy"
    end 
  end 

  def feed_cats 
    Cat.all.each do |cat| 
      cat.mood = "happy"
    end 
  end

  def sell_pets 
    Cat.all.each do |cat|
      if cat.owner == self 
        cat.mood = "nervous"
        cat.owner = nil   
      end 
    end 
    Dog.all.each do |dog|
      if dog.owner == self 
        dog.mood = "nervous" 
        dog.owner = nil   
      end 
    end 
  end 

  def list_pets 
    cat_count = Cat.all.select {|cat| cat.owner == self}.count
    dog_count = Dog.all.select {|dog| dog.owner == self}.count 
    "I have #{dog_count} dog(s), and #{cat_count} cat(s)."
  end 


end