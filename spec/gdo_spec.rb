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
end
