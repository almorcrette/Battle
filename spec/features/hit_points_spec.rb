# As Player 1,
# So I can see how close I am to winning
# I want to see Player 2's Hit Points

feature "View Player Hit Points" do
  scenario "Player 1 viewing Player 2's Hit Points" do
    sign_in_and_play
    expect(page).to have_content 'Superman Hit Points: 100 HP'
  end
  scenario "Player 2 viewing Player 1's hit points" do
    sign_in_and_play
    expect(page).to have_content "Megasaur Hit Points: 100 HP"
  end
end
