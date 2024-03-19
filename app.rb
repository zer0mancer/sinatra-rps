require 'sinatra'
require 'sinatra/reloader'

get('/') do
  erb(:root)


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
moves = ["rock", "scissors", "paper"]

@computer_move = moves.sample

if @computer_move == "paper"
  @result = "tied"
elsif @computer_move == "scissors"
  @result = "lost"
else
  @result = "won"
end

erb(:paper)
end

get('/scissors') do
moves = ["paper", "rock", "scissors"]

@computer_move = moves.sample

if @computer_move == "scissors"
  @result = "tied"
elsif @computer_move == "rock"
  @result = "lost"
else
  @result = "won"
end
  erb(:scissors)
end
