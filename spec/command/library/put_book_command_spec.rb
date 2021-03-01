require './app/command/library/put_book_command'

describe PutBookCommand do
  let(:slot_id) { '010101' }
  let(:isbn) { '9780747532743' }
  let(:isbn_not_found) { '9780747532323' }
  let(:title) { 'Harry Potter 1' }
  let(:author) { ['J. K. Rowling'] }
  let(:book) { Book.new(isbn, title, author) }
  let(:first_shelf) { Shelf.new(1, 1, 1) }
  let(:empty_book_shelf) { BookShelf.new(first_shelf) }
  let(:filled_book_shelf) { BookShelf.new(first_shelf, book) }

  context 'execute' do
    it 'should return book located address if shelf is still available' do
      args = {
        "shelves" => [
          empty_book_shelf
        ],
        "book" => book
      }
      allocate_book_command = PutBookCommand.new
      actual = allocate_book_command.execute(args)
      expect(actual).to eq("Allocated address: #{slot_id}")
    end
    it 'should return shelves are full if shelf is not available' do
      args = {
        "shelves" => [
          filled_book_shelf
        ],
        "book" => book
      }
      allocate_book_command = PutBookCommand.new
      actual = allocate_book_command.execute(args)
      expect(actual).to eq('All shelves are full!')
    end
  end
end
