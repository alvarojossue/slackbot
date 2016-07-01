require 'sinatra'
 
post '/' do
  text = params.fetch('text').strip
 
  case text
  when 'when'
    'TODO'
  when 'what'
    'TODO'
  end
end
 
run Sinatra::Application
