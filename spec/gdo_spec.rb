require_relative '../lib/gdo'

describe 'gioco dell\'oca' do
  it 'add player when there is no player' do
    response = Game.new.execute('Aggiungi giocatore', 'Pippo')
    expect(response).to eq('Giocatori: Pippo')
  end
end
