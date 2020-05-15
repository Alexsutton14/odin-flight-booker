class FlightsController < ApplicationController
    def index
        @params = params
        if @params[:passengers].to_i > 4
            @params[:passengers] = 4.to_s
        end
        @airports_select = Airport.all.map{ |a| [a.name, a.code]}
    end

    private
    def flight_params(params)
        params.permit(:start_code, :end_code)
    end
end
