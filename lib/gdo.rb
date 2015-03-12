class Game

  def initialize
    @players = []
  end

  def execute command, *args
    #commands = {
  #    'Aggiungi giocatore' => -> (x) { puts "jjj"; aggiungi_giocatore(x) },
#      'Muovi' => -> (x) { puts "kdsajkdashlfsk" }
#    }
#    puts "-#{command}- #{commands[command]}"
#    commands[command].call(*args)
    if command == 'Aggiungi giocatore'
      return aggiungi_giocatore *args
    end
    if command == 'Muovi'
      return muovi *args
    end
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
