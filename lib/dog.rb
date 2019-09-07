class Dog
  attr_reader :name, :mood
  attr_accessor :owner, :mood
  @@all = []
  
  def initialize(name, owner)
    @name = name
    @owner = owner
    @mood = "nervous"
    @@all << self
    owner.dogs << self
  end
  
  def self.all
    @@all
  end
end