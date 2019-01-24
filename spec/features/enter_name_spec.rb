# As a user
# So I can get a personalised message
# I want to be able to enter my name
feature 'Entering name' do
  scenario 'submitting name' do
    visit('/')
    fill_in :name, with: 'Haruki'
    #click_button 'Go!'
  end
end
