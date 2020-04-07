require 'bookmark_list'

describe BookmarkList do
  it 'displays the users boomarks in a list' do
    expect(subject.list).to eq([1, 2])
  end
end