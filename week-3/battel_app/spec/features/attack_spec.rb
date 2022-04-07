require_relative '../../app'

feature 'attack' do
  scenario 'attacks player 2' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content "Ruzeka attacks Joe!"
  end

  scenario 'reduces player 2 HP by 10' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content "Joe: 50HP"
  end
end