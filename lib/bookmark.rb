require 'pg'

class Bookmark

  def self.show_list
    storage = []
    con = PG.connect :dbname => 'bookmarks', :user => 'graham'
    rows = con.exec "SELECT * FROM bookmark_list;"
    #rows = con.exec "SELECT * bo"
    @bookmark = [Bookmark.new, Bookmark.new]
    rows.each do |element|
      storage << element['url']
    end
    return storage
  end

end

Bookmark.show_list


=begin
begin

    con = PG.connect :dbname => 'testdb', :user => 'janbodnar'

    rs = con.exec "SELECT * FROM Cars LIMIT 5"

    rs.each do |row|
      puts "%s %s %s" % [ row['id'], row['name'], row['price'] ]
    end

rescue PG::Error => e

    puts e.message

ensure

    rs.clear if rs
    con.close if con

end

- Use PG to connect to the PostgreSQL bookmark_manager database.
- Retrieve all bookmark records from the bookmarks table.
- Extract the URLs from the database response.
=end
