class Game

  def initialize
    @players = []
  end

  def execute command, *args
    commands = {
      'Aggiungi giocatore' => :aggiungi_giocatore ,
      'Muovi' =>  :muovi
    }
    commands[command].to_proc.call(self, *args)
  end

  def aggiungi_giocatore *args
    player_name=args[0]
    if @players.include?(args[0])
      return "#{player_name}: giocatore già presente"
    end
    @players << player_name
    return "Giocatori: #{@players.join(', ')}"
  end

  def muovi *args
    #puts args
    player_name=args[0]
    sum = args[1].to_i + args[2].to_i
    return "#{player_name} tira #{args[1]}, #{args[2]}. #{player_name} muove da Partenza a #{sum}"
  end
end
