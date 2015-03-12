class Game

  def initialize
    @players = []
  end

  def execute command, parameter
    if @players.include?(parameter)
      return "#{parameter}: giocatore già presente"
    end

    @players << parameter
    "Giocatori: #{@players.join(', ')}"
  end
end
