require_relative 'config/application'
require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'

# As a user I can list all the restaurants
get '/' do
  @restaurants = Restaurant.all

  erb :index
end

# As a user I can see one restaurant's details
get '/restaurants/:id' do
  id = params[:id]
  @restaurant = Restaurant.find(id)

  erb :show
end

# As a user I can add a restaurant
post '/restaurants' do
  name = params[:name]
  city = params[:city]
  restaurant = Restaurant.new(name: name, city: city)
  restaurant.save
  redirect '/'
end
