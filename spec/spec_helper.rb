require('rspec')
require('book')
require('author')
require('pg')
require('pry')

DB = PG.connect(dbname: 'library_test')

RSpec.configure do |config|
  config.after(:each) do
    DB.exec("DELETE FROM books;")
    DB.exec("DELETE FROM authors;")
  end
end
