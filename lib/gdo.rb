class Game

  def initialize
    @players = []
  end

  def execute command, parameter
    @players << parameter
    "Giocatori: #{@players.join(', ')}" 
  end
end
