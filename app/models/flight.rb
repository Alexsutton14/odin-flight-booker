class Flight < ApplicationRecord
    belongs_to :start_airport, class_name: "Airport"
    belongs_to :end_airport, class_name: "Airport"
    has_many :bookings

    def date
        self.datetime.to_date()
    end
    def time_string
        self.datetime.strftime("%R")
    end
end
