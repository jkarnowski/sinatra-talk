# gems 
require 'sinatra'
require 'awesome_print'

#files
require './models/coach'


get '/' do
	# ap 'hello world'
	erb :index
end

#@coaches is not accessible until its line
# ap is for Awesome Print
get '/coaches' do 
	# ap "this is the coaches pages"
	@coaches = Coach.all
	erb :coaches
end

get '/coaches/new' do
	erb :new
end

post '/coaches/create' do
	coach = params['coach_name']
	Coach.create(coach)
	#accept some params
	#actually adds a coach
	redirect '/coaches'
end



