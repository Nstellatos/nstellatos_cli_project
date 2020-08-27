class States

  @@all = []

  attr_accessor :name, :positive, :recovered_cases, :death

  def initialize(name, positive, recovered_cases, death)
    @name = name
    @positive = positive
    @recovered_cases = recovered_cases
    @death = death
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
