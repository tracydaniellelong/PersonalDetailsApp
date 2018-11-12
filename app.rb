require 'sinatra'

get '/' do 
	erb :name
end

post '/name' do
	first_name = params[:fname]
	redirect '/lastname?fname=' + first_name
end 

get '/lastname' do 
	f_name = params[:fname]
	erb :lastname, locals: {f_name: f_name}
end 

post '/last_name' do
	first_name = params[:first_n]
	lastname = params[:lname]
	redirect '/age?first_n=' + first_name + '&lname=' + lastname 
end

get '/age' do
	lastname = params[:lname]
	firstname = params[:first_n]
	erb :age, locals: {firstname: firstname, lastname: lastname}
end

post '/age' do
	firstname = params[:first_n]
	lastname = params[:last_n]
	age = params[:age]
	redirect '/color?first_n=' + firstname + '&last_n=' + lastname + '&age=' + age
end


get '/color' do
	age = params[:age]
	lastname = params[:last_n]
	firstname = params[:first_n]
	erb :color, locals: {lastname: lastname, firstname: firstname, age: age}
end
