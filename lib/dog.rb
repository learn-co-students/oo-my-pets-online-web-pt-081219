class Dog
  
  @@dogs = []
  
  attr_accessor :owner, :mood
  attr_reader :name
  
  def initialize(name, owner)
    @name = name
    @owner = owner
    @mood = "nervous"
    @@dogs << self
  end
  
  def self.all
    @@dogs
  end
  
end