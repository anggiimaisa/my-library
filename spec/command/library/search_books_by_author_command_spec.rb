require './app/command/library/search_books_by_author_command'

describe FindBookCommand do
  let(:author_found) { 'Robert' }
  let(:author_not_found) { 'Paolini' }
  let(:first_isbn) { '9780747532743' }
  let(:first_title) { 'Harry Potter 1' }
  let(:first_author) { ['J. K. Rowling'] }
  let(:second_isbn) { '9780747532826' }
  let(:second_title) { 'Clean Code' }
  let(:second_author) { ['Robert Cecil Martin'] }
  let(:first_book) { Book.new(first_isbn, first_title, first_author) }
  let(:second_book) { Book.new(second_isbn, second_title, second_author) }
  let(:first_shelf) { Shelf.new(1, 1, 1) }
  let(:second_shelf) { Shelf.new(1, 1, 2) }
  let(:third_shelf) { Shelf.new(1, 1, 3) }
  let(:first_book_shelf) { BookShelf.new(first_shelf, first_book) }
  let(:second_book_shelf) { BookShelf.new(second_shelf, second_book) }
  let(:third_book_shelf) { BookShelf.new(third_shelf, first_book) }

  context 'execute' do
    it 'should return filtered list of book if book author is found' do
      args = {
        "shelves" => [
          first_book_shelf, second_book_shelf, third_book_shelf
        ],
        "book_author" => author_found
      }
      search_books_by_author_command = SearchBooksByAuthorCommand.new
      actual = search_books_by_author_command.execute(args)
      expectation = ["010102: #{second_isbn} | #{second_title} | #{second_author.join(', ')}"]
      expect(actual).to eq(expectation)
    end
  end
end

