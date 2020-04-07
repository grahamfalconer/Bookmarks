feature 'Displays list of bookamrks' do
  scenraio 'A user sees their bookmarks in a list' do
    view ('/bookmarks')
    expect(page).to have_content "This is a list of bookmarks"
  end
end