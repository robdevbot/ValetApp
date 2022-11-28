require 'net/http'

class Vehicle < ApplicationRecord
  has_many :check_ins

  def self.get_info_from_vin(vin)
    url = "https://vpic.nhtsa.dot.gov/api/vehicles/decodevin/#{vin}?format=json"
    puts 'in the get_info_from_vin method'

    response = make_json_api_request(url)
  end

  def self.make_json_api_request(url)
    uri = URI.parse(url)
    https = Net::HTTP.new(uri.host, uri.port)
    https.use_ssl = true

    request = Net::HTTP::Get.new(uri)
    request['Content-Type'] = 'text/json'

    response = https.request(request)

    response_body = JSON.parse(response.body)

    response_body
  end
end
