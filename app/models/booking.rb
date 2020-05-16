class Booking < ApplicationRecord
    has_many :passengers, foreign_key: :booking_id, class_name "Passenger"
end
