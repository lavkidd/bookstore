def setup
  @book = Book.new
end

test 'title remembers its value' do
  @book.title = 'The Hobbit'
  assert_equal 'The Hobbit', @book.title
end

test 'author remember its value' do
  @book.author = 'Tolkien'
  assert_equal 'Tolkien', @book.author
end

test 'pages remember its value' do
  @book.pages = 768
  assert_equal 768, @book.pages
end

test 'persistence works properly' do
  created_book = Book.create(title: 'Snow Crash', author: 'Neal Stephenson', pages: 440)
  found_book = Book.find created_book.id
  assert_not_nil found_book
  assert_equal 'Snow Crash', found_book.title
  assert_equal 'Neal Stephenson', found_book.author
  assert_equal 440, found_book.pages
 end

