
get '/events/create' do
  erb :'/events/create'
end

post '/events' do

 @event = Event.new(params[:event])
 @event.creator_id = current_user.id

 if @event.save
		redirect "/users/#{current_user.id}"
	else
		@error = "could not create event"
		p @error
	end


end

get '/events/:id' do
  @events = Event.where(creator_id: session[:id])
@event = @events.find(params[:id])
  erb :'/events/details'

end