require 'sinatra'

get '/' do 
	erb :name
end

post '/name' do
	first_name = params[:fname]
	redirect '/lastname?fname=' + first_name
end 

get '/lastname' do 
	first_name = params[:fname]
	erb :lastname, locals: {fname: first_name}
end 

post '/lastname' do
	first_name = params[:fname]
	last_name = params[:lname]
	redirect '/age?fname=' + first_name + '&lname=' + last_name 
end

get '/age' do
	last_name = params[:lname]
	first_name = params[:fname]
	erb :age, locals: {fname: first_name, lname: last_name}
end

post '/age' do
	first_name = params[:fname]
	last_name = params[:lname]
	age = params[:age]
	redirect '/color?fname=' + first_name + '&lname=' + last_name + '&age=' + age
end


get '/color' do
	age = params[:age]
	last_name = params[:lname]
	first_name = params[:fname]
	erb :color, locals: {lname: last_name, fname: first_name, age: age}
end




