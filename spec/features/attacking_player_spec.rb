# User Story
# As Player 1,
# So I can win a game of Battle,
# I want to attack Player 2, and I want to get a confirmation

feature "Attack Player" do

  scenario "Player 1 attacks Player 2" do
    sign_in_and_play
    # click on button "Attack"
    click_on('Attack')
    # expect to see a confirmation: "You attacked Superman"
    expect(page).to have_content 'You attacked Superman! BAM!'
  end

  scenario "Player 2 attacks Player 1" do
    sign_in_and_play
    click_on('Attack')
    click_on('Continue')
    click_on('Attack')
    expect(page).to have_content 'You attacked Megasaur! BAM!'
  end
end