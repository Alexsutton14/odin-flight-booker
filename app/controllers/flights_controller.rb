class FlightsController < ApplicationController
    def index
        @params = params
        if @params[:passengers].to_i > 4
            @params[:passengers] = 4.to_s
        end
        @flights = get_flights(params)
        @airports_select = Airport.all.map{ |a| [a.name, a.code]}
    end

    private
    def get_flights(params)
        if params[:start_code].present? && params[:end_code].present? && params[:date].present? && params[:passengers].present?
            start_airport = Airport.find_by(code: params[:start_code])
            end_airport = Airport.find_by(code: params[:end_code])
            flight_date = Date.parse(params[:date])
            Flight.where(start_airport: start_airport.id, end_airport: end_airport.id, datetime: flight_date.all_day)
        end
    end
end
