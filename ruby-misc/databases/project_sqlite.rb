# https://www.devdungeon.com/content/sqlite3-tutorial
require 'sqlite3'

db = SQLite3::Database.open 'test.db'
db.results_as_hash = true
db.execute "CREATE TABLE IF NOT EXISTS images(path TEXT, thumbs_up INT)"

image_path = 'image1.png'
results = db.query "SELECT path, thumbs_up FROM images WHERE path=?", image_path
# Alternatively, to only get one row and discard the rest,
# replace `db.query()` with `db.get_first_value()`.

first_result = results.next
if first_result
  puts first_result['thumb_up']
else
  puts 'No results found.'
end

# Alternatively, you can go through each result like this:
# results.each { |row| puts row.join(',') }