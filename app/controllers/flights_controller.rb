class FlightsController < ApplicationController
    def index
        if (params.present?)
        departing_flights = Airport.find(params[:start_airport_id]).departing_flights
        @destination_airports_select = departing_flights.map{ |f| [ f.end_airport.code, f.end_airport.id]}
        end
        @start_airports_select = Airport.all.map{ |a| [a.code, a.id]}        
    end

    private
    def flight_params
        params.require(:flight).permit(:start_airport_id, :end_airport_id) if params[:flight].present?
    end
end
