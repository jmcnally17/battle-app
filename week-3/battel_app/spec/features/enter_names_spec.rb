require_relative '../../app.rb'

feature "enter names" do
  scenario "submitting names" do
    visit('/')
    fill_in :player_1_name, with: 'Ruzeka'
    fill_in :player_2_name, with: 'Joe'
    click_button 'Submit'
    expect(page).to have_content "Ruzeka vs. Joe"
  end
end