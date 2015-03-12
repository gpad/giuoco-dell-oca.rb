class Game

  def initialize
    @players = []
  end

  def execute command, player_name, *args
    if command == 'Aggiungi giocatore'
      if @players.include?(player_name)
        return "#{player_name}: giocatore già presente"
      end
      @players << player_name
      return "Giocatori: #{@players.join(', ')}"
    end
    if command == 'Muovi'
      sum = args[0].to_i + args[1].to_i
      return "#{player_name} tira #{args[0]}, #{args[1]}. #{player_name} muove da Partenza a #{sum}"
    end
  end
end
