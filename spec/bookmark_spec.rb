require 'bookmark'


describe Bookmark do
  it 'displays the users bookmarks in a list' do
    expect(Bookmark.show_list).to be_instance_of(Array)
  end
  it 'displays a list of bookmarks' do
    expect(Bookmark.show_list[0].class).to eq(String)
  end
  it 'returns the urls from the table' do
    con = PG.connect :dbname => 'bookmarks', :user => 'graham'
    expect(Bookmark.show_list).to include('http://www.makersacademy.com')
    .and include('http://www.google.com')
    .and include('http://askjeeves.com')
    .and include('http://www.google.com/')
  end

end

=begin
id |             url
----+------------------------------
 2 | http://www.makersacademy.com
 3 | http://www.google.com
 4 | http://askjeeves.com
(3 rows)



con = PG.connect :dbname => 'bookmark', :user => 'graham'

=end
