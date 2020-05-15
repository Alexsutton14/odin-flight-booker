class FlightsController < ApplicationController
    def index
        @params = params
        @airports_select = Airport.all.map{ |a| [a.code, a.code]}
    end

    private
    def flight_params(params)
        params.permit(:start_code, :end_code)
    end
end
