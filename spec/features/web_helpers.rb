def sign_in_and_play
  visit('/')
  fill_in 'First player name', with: 'Megasaur'
  fill_in 'Second player name', with: 'Superman'
  click_on 'Submit'
end

def two_rounds
  click_on("Attack") # Attacking Superman
  click_on("Continue")
  click_on("Attack") # Attacking Megasaur
  click_on("Continue")
end

def play_9_rounds
  sign_in_and_play
  9.times {two_rounds}
end