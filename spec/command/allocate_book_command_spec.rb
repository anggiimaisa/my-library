require './app/command/allocate_book_command'

describe AllocateBookCommand do
  let(:slot_id) { '010101' }
  let(:isbn) { '9780747532743' }
  let(:isbn_not_found) { '9780747532323' }
  let(:title) { 'Harry Potter 1' }
  let(:author) { ['J. K. Rowling'] }
  let(:book) { Book.new(isbn, title, author) }
  let(:first_shelf) { Shelf.new(1, 1, 1) }
  let(:book_shelf) { BookShelf.new(first_shelf) }

  context 'execute' do
    it 'should print book located address if shelf is still available' do
      args = {
        "shelves" => [
          book_shelf
        ],
        "book" => book
      }
      allocate_book_command = AllocateBookCommand.new
      actual = allocate_book_command.execute(args)
      expect(actual).to eq("Allocated address: #{slot_id}")
    end
  end
end
