Rails.application.routes.draw do
  root "flights#index"
  post "/", to: "bookings#new"
  post "/booking", to: "bookings#create"
  get "/booking/:id", to: "bookings#show"
end
