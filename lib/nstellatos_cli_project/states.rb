class States

  @@all = []

  attr_accessor :name, :positive, :negative_cases, :recovered_cases, :deaths

  def initialize(name, positive)
    @name = name
    @positive = positive
    
    @@all << self
  end 

  def self.all  # this permits the class variable array to be utilized in other classes and methods
    @@all
  end

  # def self.all 
  #   Api.fetch_data if @@all.empty?
  #    @@all 
  # end

  # def save
  #   @@all << self 
  # end 

end
