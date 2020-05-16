Rails.application.routes.draw do
  root "flights#index"
  post "/", to: "bookings#new"
  post "/booking", to: "bookings#create"
end
