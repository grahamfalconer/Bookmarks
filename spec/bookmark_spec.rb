require 'bookmark'

describe Bookmark do
  it 'displays the users bookmarks in a list' do
    expect(Bookmark.show_list).to be_instance_of(Array)
  end
  it "displays a list of bookmarks" do
    expect(Bookmark.show_list[0].class).to eq(Bookmark)
  end
end
