
#API - Application Program Interface 
class Api
  def self.fetch_data #class method which makes it accessible in other classes 
      covid_data = RestClient.get("https://api.covidtracking.com/v1/states/#{Cli.state}/current.json")
      state_hash = JSON.parse(covid_data)
      States.new(state_hash["state"], state_hash["date"], state_hash["positive"], state_hash["recovered"], state_hash["death"])#holds the keys and values from api
  end
end





