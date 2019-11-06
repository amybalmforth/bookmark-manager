require 'pg'

class Bookmarks

  def self.all
    if ENV['ENVIRONMENT'] == 'test'
      conn = PG::Connection.open(:dbname => 'bookmark_manager_test')
      result = conn.exec('select * from bookmarks')
      result.map do |bookmark| bookmark['url'] end
    else
      conn = PG::Connection.open(:dbname => 'bookmark_manager')
      result = conn.exec('select * from bookmarks')
      result.map do |bookmark| bookmark['url'] end
    end
  end

  def self.create(url:)
    if ENV['ENVIRONMENT'] == 'test'
      connection = PG.connect(dbname: 'bookmark_manager_test')
    else
      connection = PG.connect(dbname: 'bookmark_manager')
    end
    connection.exec("INSERT INTO bookmarks (url) VALUES('#{url}')")
  end

end
