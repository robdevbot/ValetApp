class Vehicle < ApplicationRecord
  def get_info_from_vin(vin)
    url = "https://vpic.nhtsa.dot.gov/api/vehicles/decodevin/
    #{vin}?format=json"
  end
end
