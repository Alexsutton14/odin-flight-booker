class FlightsController < ApplicationController
    def index
        @params = params
        if @params[:passengers].to_i > 4
            @params[:passengers] = 4.to_s
        end
        @selected_routes = find_routes(params)
        @airports_select = Airport.all.map{ |a| [a.name, a.code]}
    end

    private
    def flight_params(params)
        params.permit(:start_code, :end_code)
    end

    def find_routes(params)
        if params[:start_code].present? && params[:end_code].present? && params[:date].present? && params[:passengers].present?
            start_airport = Airport.find_by(code: params[:start_code])
            end_airport = Airport.find_by(code: params[:end_code])
            Route.where(start_airport_id: start_airport.id, end_airport_id: end_airport.id)
        end
    end
end
