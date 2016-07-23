get '/events' do
  even
end


get '/events/create' do
  erb :'/events/create'
end

post '/events' do
 @event = Event.new(params[:event])

end

get '/events/show' do
  "Hello World"
end