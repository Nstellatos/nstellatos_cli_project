class NstellatosCliProject::State
@@all = []
attr_accessor :name, :positive_cases, :negative_cases, :recovered_cases, :deaths

def initialize(name)
    @name = name 
    save
end 

def self.all 
    NstellatosCliProject::Api.fetch_data if @@all.empty?
     @@all 
end
def save
    @@all << self 
end 



end
