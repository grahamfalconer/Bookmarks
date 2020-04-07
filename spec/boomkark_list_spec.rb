require 'bookmark_list'

describe Bookmarks do
  it 'displays the users boomarks in a list' do
    expect(subject).to eq :list
  end
end