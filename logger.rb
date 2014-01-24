require 'sinatra'
get '/' do 
	"Box Event Logger"
end 


get '/log/*' do
	params[:splat]
	File.open("events.txt", "w"){|event| event.puts params[:splat]}
	"listenign for event logs"
end 

get '/events' do 
	"where events are posted"
	log = File.open("events.txt", "r"){|event| event.read}
	"#{log}"
end
	

get '/form' do 
	erb :form 
end 

post '/form' do 
	"you said #{params[:message]}"
end 
	