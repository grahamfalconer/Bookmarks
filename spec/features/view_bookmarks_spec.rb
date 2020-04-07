feature 'Displays list of bookamrks' do
  scenario 'A user sees their bookmarks in a list' do
    visit ('/bookmarks')
    expect(page).to have_content "These are your bookmarks"
  end
end