require_relative '../../app'

feature 'view hit points' do
  scenario 'see player 2 hp' do
    sign_in_and_play
    expect(page).to have_content 'Joe: 60HP'
  end
end