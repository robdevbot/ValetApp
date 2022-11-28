class VehiclesController < ActionController::Base
  skip_before_action :verify_authenticity_token

  def index
    @vehicles = Vehicle.where(checkedin: true)
  end

  def get_info_from_vin
    vin = params['vin']
    info = Vehicle.get_info_from_vin(vin)
  end
end
