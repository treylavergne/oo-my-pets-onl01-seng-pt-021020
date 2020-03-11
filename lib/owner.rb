class Owner
  @@all = []
  attr_reader(:name, :species)
  
  def initialize(owner_name)
    @name = owner_name
    @species = "human"
    @@all << self
  end
  
  def say_species()
    return "I am a #{species}."
  end
  
  def buy_cat(cat_name)
    new_cat = Cat.new(cat_name, self)
  end
  
  def buy_dog(dog_name)
    new_dog = Dog.new(dog_name, self)
  end
  
  def cats()
    return Cat.all.select{|cat| cat.owner == self}
  end
  
  def dogs()
    return Dog.all.select{|dog| dog.owner == self}
  end
  
  def walk_dogs()
    self.dogs.each {|dog| dog.mood = "happy"}
  end
  
  def feed_cats()
    self.cats.each {|cat| cat.mood = "happy"}
  end
  
  def sell_pets()
    self.dogs.each do |dog| 
      dog.mood = "nervous"
      dog.owner = nil
    end
    
    self.cats.each do |cat| 
      cat.mood = "nervous"
      cat.owner = nil
    end
  end
  
  def list_pets()
    return "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
  end
  
  def self.all()
    return @@all
  end
  
  def self.count()
    return @@all.size
  end
  
  def self.reset_all()
    @@all.clear
  end
end