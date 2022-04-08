feature "Losing Game" do
  scenario "Tests if player loses game when they reach 0 HP" do
    play_9_rounds
    click_on("Attack")
    click_on("Continue")
    expect(page).to have_content "Superman has lost the game!"
  end
end