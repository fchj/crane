require 'sinatra'

get '/hi' do
  "Hello from kran"
end

#all of it
get '/dof' do

end

#specific servo channel state, running, stopped, sensor state, etc.
get '/dof/:id' do

end

#set specific servo/engine to something
put '/dof/:id' do
  #request.body.rewind
  #request.params.inspect
  %x(./pololu.sh /dev/ttyACM0 #{params[:id]} #{params[:position]})
  "hi you moved %s to %s" % [params[:id], params[:position]]
end
