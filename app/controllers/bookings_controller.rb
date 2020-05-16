class BookingsController < ApplicationController
    def new
        @booking = Booking.new
        @flight = Flight.find(params[:flight][:id])
        @passengers = []
        params[:passengers].to_i.times do
            @booking.passengers.build
        end
    end

    def create

    end

    private
    def flight_params(params)
        params.require(:flight).permit(:id)
    end
    def booking_params(params)
        params.require(:booking).permit(:number_of_passengers, :flight_id, )
    end
end
