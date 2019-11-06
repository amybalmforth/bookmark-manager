feature 'viewing bookmarks' do
  scenario 'a user can see bookmarks' do

    Bookmarks.create(url: 'http://www.makersacademy.com')
    Bookmarks.create(url: 'http://www.destroyallsoftware.com')
    Bookmarks.create(url: 'http://www.codewars.com')

    visit '/bookmarks'
    expect(page).to have_content "My bookmarks"
    expect(page).to have_content "http://www.makersacademy.com"
    expect(page).to have_content "http://www.destroyallsoftware.com"
    expect(page).to have_content "http://www.codewars.com"
  end
end
