require 'sinatra'
 
post '/' do
  text = params.fetch('text').strip
  user = params.fetch('user_name')

  if text == "results"
  	return "Hi #{user}, here are this week's results"
  elsif text == "schedule"
  	return "Hi #{user}, here are this week's schedule"
  else
  	return "Sorry. I don't understand that command :cry:"
  end
end
 
run Sinatra::Application
