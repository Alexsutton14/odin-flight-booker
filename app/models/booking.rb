class Booking < ApplicationRecord
    belongs_to :flight
    has_many :passengers, foreign_key: :booking_id, class_name: "Passenger"

    accepts_nested_attributes_for :passengers
end
