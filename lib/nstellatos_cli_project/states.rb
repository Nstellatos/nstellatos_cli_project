class States



    @@all = [] # - class variable
    @@states_abvs = { "AL" => "alabama", "AK" => "alaska", "AZ" => "arizona", "AR" => "arkansas", "CA" => "california", "CO" => "colorado", "CT" => "connecticut", "DE" => "delaware", "FL" => "florida", "GA" => "georgia", "HI" => "hawaii", "ID" => "idaho", "IL" => "illinois", "IN" => "indiana", "IA" => "iowa", "KS" => "kansas", "KY" => "kentucky", "LA" => "louisiana", "ME" => "maine", "MD" => "maryland", "MA" => "massachusetts", "MI" => "michigan", "MN" => "minnesota", "MS" => "mississippi", "MO" => "missouri", "MT" => "montana", "NE" => "nebraska", "NV" => "nevada", "NH" => "new hampshire", "NJ" => "new jersey", "NM" => "new mexico", "NY" => "new york", "NC" =>"north carolina", "ND" => "north dakota", "OH" => "ohio", "OK" => "oklahoma", "OR" => "oregon", "PA" => "pennsylvania", "RI" => "rhode island" , "SC" => "south carolina", "SD" => "south dakota", "TN" => "tennessee", "TX" => "texas", "UT" => "utah", "VT" => "vermont", "VA" => "virginia", "WA" => "washington", "WV" => "west virginia", "WI" => "wisconsin", "WY" => "wyoming" }
  
    attr_accessor :name, :date, :positive, :recovered_cases, :death, :abv #reader & writer
  
    def initialize(name, date, positive, recovered_cases, death)
      @name = @@states_abvs[name] #@@state_abvs is assigned to @name / pulls value from state abv
      @date = date 
      @abv = name #sets name for the abbreviation 
      @positive = positive
      @recovered_cases = recovered_cases
      @death = death
      @@all << self
      return self
    end 
  
    def self.all  # this permits the class variable array to be utilized in other classes and methods
      @@all
    end
  
    def self.states_abvs #class method - holds the @@state_abvs hash
      @@states_abvs
    end


    def self.state_search #class method - allows user to search by full state name 
        puts "Type the full name of the state you want look up."
        if state = gets.chomp
         abv = @@states_abvs.key(state.downcase) #.key="NJ" (state)="New Jersey"
        return abv #returns state abbreviation ("NJ")
        else
            self.invalid_input
      end
    end 
  
    # def self.search #class method - allows user to search by full state name 
    #   puts "Type the full name of the state you want look up."
    #   state = gets.chomp ##TODO: downcase so no error is raised 
    #   abv = @@states_abvs.key(state) #.key="NJ" (state)="New Jersey"
    #   return abv #returns state abbreviation ("NJ")
    # end
    
  
  end
  