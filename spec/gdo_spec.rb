require_relative '../lib/gdo'

describe 'gioco dell\'oca' do
  it 'add player when there is no player' do
    response = Game.new.execute('Aggiungi giocatore', 'Pippo')
    expect(response).to eq('Giocatori: Pippo')
  end

  it 'add player when there is already a player' do
    game = Game.new
    game.execute('Aggiungi giocatore', 'Pippo')
    response = game.execute('Aggiungi giocatore', 'Pluto')
    expect(response).to eq('Giocatori: Pippo, Pluto')
  end

  it 'when add existing player the system notify faul' do
    game = Game.new
    game.execute('Aggiungi giocatore', 'Pippo')
    response = game.execute('Aggiungi giocatore', 'Pippo')
    expect(response).to eq('Pippo: giocatore già presente')
  end

  it 'Move player 4,2' do
    game = Game.new
    response = game.execute('Muovi', 'Pippo', '4', '2')
    expect(response).to eq('Pippo tira 4, 2. Pippo muove da Partenza a 6')
  end
end
