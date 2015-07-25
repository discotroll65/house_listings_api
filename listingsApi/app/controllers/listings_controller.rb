class ListingsController < ApplicationController
  def index
    min_price = get_params(:min_price, 0)
    max_price = get_params(:max_price, 999_999_999_999_999)
    min_bed = get_params(:min_bed, 0)
    max_bed = get_params(:max_bed, 999_999)
    min_bath = get_params(:min_bath, 0)
    max_bath = get_params(:max_bath, 999_999)

    #extra
    min_sq_ft = get_params(:min_sq_ft, 0)
    max_sq_ft = get_params(:max_sq_ft , 999_999_999)

    #could enable users to drag a square on the screen to specify
    min_lat = get_params(:min_lat, -90)
    max_lat = get_params(:max_lat, 90)
    min_lng = get_params(:min_lng, -180)
    max_lng = get_params(:max_lng, 180)

    active_status = Status.find_by(name: "active")
    @houses = active_status.houses
      .where('price BETWEEN ? AND ?', min_price, max_price)
      .where('bedrooms BETWEEN ? AND ?', min_bed, max_bed)
      .where('bathrooms BETWEEN ? AND ?', min_bath, max_bath)
      .where('sq_ft BETWEEN ? AND ?', min_sq_ft, max_sq_ft)
      .where('lat BETWEEN ? AND ?', min_lat.to_s, max_lat.to_s)
      .where('lng BETWEEN ? AND ?', min_lng.to_s, max_lng.to_s)

    render :index
  end

  private
  def get_params(param_name, default)
    params[param_name] ? params[param_name] : default
  end
end
