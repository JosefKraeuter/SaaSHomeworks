class WrongNumberOfPlayersError < StandardError ; end
class NoSuchStrategyError < StandardError ; end

def hand_winner(h1, h2)
	situations = {"r"=>"s", "s"=>"p","p"=>"r"}
	if situations[h1] == h2
		h1
	elsif 
		situations[h2] == h1
		h2
	else
		h1
	end
end




def rps_result(m1, m2)
  # YOUR CODE HERE
end


def rps_game_winner(game)
  raise WrongNumberOfPlayersError unless game.length == 2
  
  h1 = game[0][1].downcase  
  h2 = game[1][1].downcase

  unless ["p","r","s"].include?(h1) and ["p","r","s"].include?(h2) 
  	raise	NoSuchStrategyError
  end

  if hand_winner(h1,h2) == h1
  	game[0]
  else 
  	game[1]
  end

end







def rps_tournament_winner(tournament)

  if tournament[0][0].is_a?(Array)
  	  tournament = [rps_tournament_winner(tournament[0]), rps_tournament_winner(tournament[1])]
  end
  	rps_game_winner(tournament)
  end 

