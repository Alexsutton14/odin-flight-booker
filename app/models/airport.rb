class Airport < ApplicationRecord
    has_many :departing_routes, foreign_key: :start_airport, class_name: "Flight"
    has_many :arriving_routes, foreign_key: :end_airport, class_name: "Flight"
end
