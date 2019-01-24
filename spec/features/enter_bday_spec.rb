# As a user
# So I can get a message about how long it is until my birthday
# I want to be able to enter my birthday
feature 'Entering birthday' do
  scenario 'submitting birthday' do
    visit('/')
    fill_in :day, with: 24
    select "January", from: :month
    click_button 'Go!'
  end
end
