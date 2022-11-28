class CheckInsController < ActionController::Base
  skip_before_action :verify_authenticity_token

  def index
    @check_ins = CheckIn.all
  end

  def show; end

  def create
    vehicle = Vehicle.create_or_find_by(vehicle_params)

    CheckIn.create(
      vehicle: vehicle,
      attendant: Attendant.find(check_in_params['attendant_id']),
      parking_spot: check_in_params['parking_spot']
    )

    @check_ins = CheckIn.all
    render :index
  end

  def vehicle_params
    params.permit(:vin, :year, :make, :model, :trim)
  end

  def check_in_params
    params.permit(:attendant_id, :parking_spot)
  end
end
