class Cat
  @@all = []
  attr_reader(:name)
  attr_accessor(:owner, :mood)
  
  def initialize(cat_name, cat_owner)
    @name = cat_name
    @owner = cat_owner
    @mood = "nervous"
    @@all << self
  end
  
  def self.all()
    return @@all
  end
end