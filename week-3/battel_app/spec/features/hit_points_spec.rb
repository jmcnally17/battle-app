require_relative '../../app'

feature 'view hit points' do
  scenario 'see player 2 hp' do
    visit('/')
    fill_in :player_1_name, with: 'Ruzeka'
    fill_in :player_2_name, with: 'Joe'
    click_button 'Submit'
    expect(page).to have_content 'Joe: 60HP'
  end
end