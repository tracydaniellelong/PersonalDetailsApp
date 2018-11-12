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
	erb :age, locals: {lastname: lastname, firstname: firstname}
end
