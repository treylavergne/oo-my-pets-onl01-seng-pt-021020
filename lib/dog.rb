class Dog
  @@all = []
  attr_reader(:name)
  attr_accessor(:owner, :mood)
  
  def initialize(dog_name, dog_owner)
    @name = dog_name
    @owner = dog_owner
    @mood = "nervous"
    @@all << self
  end
  
  def self.all()
    return @@all
  end
end