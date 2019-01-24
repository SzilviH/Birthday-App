#As a user,
#Once I submitted my details
#I want to see how long it is until my birthday

feature 'Display message' do
  scenario 'see how many days until birthday' do
    visit('/')
    fill_in :name, with: 'Haruki'
    fill_in :day, with: 26
    select 'January', from: :month
    click_button 'Go!'
    expect(page).to have_content 'Your birthday will be in 2 days, Haruki.'
  end
end
