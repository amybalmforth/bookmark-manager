feature 'adding bookmarks' do

  scenario 'see text on page' do
    visit '/new'
    expect(page).to have_content 'Add a new link'
  end

  scenario 'fill in text box and submit' do
    visit '/new'
    fill_in('url', with: 'http://www.capybara.com')
    click_button('Submit')
    expect(page).to have_content 'http://www.capybara.com'
  end



end
