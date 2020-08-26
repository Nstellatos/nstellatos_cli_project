class NstellatosCliProject::Api


def self.fetch_data
url = "https://api.covidtracking.com/v1/states/current.json"
response = HTTParty.get(url)
response.parsed_response
end








end



