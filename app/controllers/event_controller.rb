get '/events/create' do
  erb :'/events/create'
end

post '/events' do
 @event = Event.new(params[:event])

end

get '/events/show' do
  
end