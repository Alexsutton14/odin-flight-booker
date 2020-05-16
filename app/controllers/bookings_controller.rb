class BookingsController < ApplicationController
    def new
        @number_of_passengers = params[:passengers]
        @booking = Booking.new
        @flight = Flight.find(params[:flight][:id])
        @passengers = []
        params[:passengers].to_i.times do
            @booking.passengers.build
        end
    end

    def create
        @booking = Booking.new(booking_params(params))
        if @booking.save
            @id = @booking.id.to_s
            redirect_to "/booking/"+@id
        else
            redirect_to root_path
        end
    end

    def show
        @booking = Booking.find(params[:id])
    end

    private
    def flight_params(params)
        params.require(:flight).permit(:id)
    end
    def booking_params(params)
        params.require(:booking).permit(:number_of_passengers, :flight_id, passengers_attributes:[:name, :email])
    end
end
