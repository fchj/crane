require 'rubygems'
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
  cmd ="./pololu.sh /dev/ttyACM0 #{params[:id]} #{params[:position]}"
#  %x(./pololu.sh /dev/ttyACM0 #{params[:id]} #{params[:position]})
  res = %x(#{cmd})
  "hi you moved %s to %s (%s -> %s)" % [params[:id], params[:position], cmd, res]
end

put '/grabber' do
  scale_pos = params[:position].to_i * 70
  cmd ="./pololu.sh /dev/ttyACM0 1 #{scale_pos}"
  res = %x(#{cmd})
  "Hi scale_pos is %s" % scale_pos 
end
