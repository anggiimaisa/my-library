require './app/command/library/find_book_command'

describe FindBookCommand do
  let(:slot_id) { '010101' }
  let(:isbn) { '9780747532743' }
  let(:isbn_not_found) { '9780747532323' }
  let(:title) { 'Harry Potter 1' }
  let(:author) { ['J. K. Rowling'] }
  let(:book) { Book.new(isbn, title, author) }
  let(:first_shelf) { Shelf.new(1, 1, 1) }
  let(:book_shelf) { BookShelf.new(first_shelf, book) }

  context 'execute' do
    it 'should print book slot if book isbn is found' do
      args = {
        "shelves" => [
          book_shelf
        ],
        "isbn" => isbn
      }
      find_book_command = FindBookCommand.new
      actual = find_book_command.execute(args)
      expect(actual).to eq("Found the book at 010101")
    end
    it 'should print book not found if book isbn is not found' do
      args = {
        "shelves" => [
          book_shelf
        ],
        "isbn" => isbn_not_found
      }
      find_book_command = FindBookCommand.new
      actual = find_book_command.execute(args)
      expect(actual).to eq("Book not found!")
    end
  end
end
