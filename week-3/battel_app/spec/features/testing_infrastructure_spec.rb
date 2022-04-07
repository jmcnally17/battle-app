require_relative '../../app.rb'

feature 'Test infrastructure' do
  scenario 'Can runn app and check page content' do 
    visit('/')
    expect(page).to have_content 'Testing infrastructure working!'
  end
end