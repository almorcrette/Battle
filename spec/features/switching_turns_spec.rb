# User story
# As two Players,
# So we can continue our game of Battle,
# We want to switch turns

feature 'Switching turns' do

  let(:game) { Game.new }

  scenario 'Game switches turns after each attack' do
    sign_in_and_play
    click_on('Attack')
    click_on('Continue')
    expect { game.change_turn }.to change { game.turn }.from(game.first_player).to(game.second_player)
  end

  scenario 'displays whose turn it is' do
    sign_in_and_play
    click_on('Attack')
    click_on('Continue')
    expect(page).to have_content "Superman's turn..."
  end
end
