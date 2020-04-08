require 'bookmark'


describe Bookmark do
  it 'displays the users bookmarks in a list' do
    expect(Bookmark.show_list).to be_instance_of(Array)
  end
  it 'displays a list of bookmarks' do
    con = PG.connect :dbname => 'bookmarks_test', :user => 'graham'
    con.exec("INSERT INTO bookmark_list (url) VALUES('http://www.makersacademy.com');")
    expect(Bookmark.show_list[0].class).to eq(String)
  end
  it 'returns the urls from the table' do
    con = PG.connect :dbname => 'bookmarks_test', :user => 'graham'
    con.exec("INSERT INTO bookmark_list (url) VALUES('http://www.makersacademy.com');")
    con.exec("INSERT INTO bookmark_list (url) VALUES('http://www.google.com/');")
    con.exec("INSERT INTO bookmark_list (url) VALUES('http://askjeeves.com');")

    expect(Bookmark.show_list).to include('http://www.makersacademy.com')
    .and include('http://www.google.com/')
    .and include('http://askjeeves.com')
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
