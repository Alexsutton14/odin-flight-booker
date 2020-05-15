class FlightsController < ApplicationController
    def index
        @params = params
        @selected_start = 1
        if (params[:start_airport_id].present?)
        @selected_start = params[:start_airport_id]
        @departing_flights = Airport.find(params[:start_airport_id]).departing_flights
        @destination_airports_select = @departing_flights.map{ |f| [ f.end_airport.code, f.end_airport.id]}
        end
        if(@destination_airports_select == nil)
            @destination_airports_select = ["-"]
        end
        @start_airports_select = Airport.all.map{ |a| [a.code, a.id]}
    end

    private
    def flight_params(params)
        params.permit(:start_airport_id, :end_airport_id)
    end
end
