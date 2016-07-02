require 'sinatra'
require 'httparty'
 
post '/' do
  text = params.fetch('text').strip
  user = params.fetch('user_name')

  if text == "results"
  	response = HTTParty.get("http://api.football-data.org/v1/fixtures?timeFrame=n1",
    :headers => { "X-Auth-Token" => "7c5d78ac71974a18a4fc13073134f11b"},
    :dataType => "json")
    response.body
  	# return "Hi #{user}, here are this week's results ---> "
  elsif text == "schedule"
  	return "Hi #{user}, here are this week's schedule"
  else
  	return "Sorry. I don't understand that command :cry:"
  end
end
 
run Sinatra::Application

