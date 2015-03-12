require_relative '../lib/gdo'

describe 'gioco dell\'oca' do
  it 'add player when there is no player' do
    game = Game.new
    game.add_player "gino"
    expect(game.players).to eq(['gino'])
  end
end
