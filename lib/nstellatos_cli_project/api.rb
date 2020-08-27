require 'pry'
class Api

  def self.fetch_data
    state_abv = ["nj", "ny", "tn", "fl", "ca", "tx", "ga", "il", "az", "nc"]
    state_abv.each_with_index do |state, n|
      covid_data = RestClient.get("https://api.covidtracking.com/v1/states/#{state}/current.json")
      state_hash = JSON.parse(covid_data)
      States.new(state_hash["state"], state_hash["positive"], )
    end
  end

end



