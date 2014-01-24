require 'sinatra'
get '/' do 
	"Box Event Logger"
end 


get '/log/*' do
	params[:splat]
	File.open("events.txt", "w"){|event| event.puts params[:splat]}
end 

post '/events' do 
	log = File.open("events.txt", "r"){|event| event.read}
	"#{log}"
end
	
	