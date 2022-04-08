require_relative '../../app'

feature 'turn_switcher' do
  scenario 'switching form player 1 to player 2' do
    sign_in_and_play
    click_button 'Attack'
    click_button 'Switch'
    expect(page).to have_content "Joe's turn"
  end
end
