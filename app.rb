require 'sinatra'
require 'sinatra/reloader'

get('/') do
  "
  <h1>Welcome to your Sinatra App!</h1>
  <p>Define some routes in app.rb</p>
  "
end

get('/rock') do
  moves = ["rock", "paper", "scissors"]

  @computer_move = moves.sample

  if @computer_move == "rock"
    @result = "tied"
  elsif @computer_move == "paper"
    @result = "lost"
  else
    @result = "won"
  end


erb(:rock)

end

get('/paper') do

  "
  "
end

get('/scissors') do

  "
  "

end
