require './app/command/find_book_command'

describe FindBookCommand do
  let(:slot_id) { '010101' }
  let(:isbn) { '9780747532743' }
  let(:title) { 'Harry Potter 1' }
  let(:author) { ['J. K. Rowling'] }
  let(:book) { Book.new(isbn, title, author) }
  let(:first_shelf) { Shelf.new(1, 1, 1) }

  context 'execute' do
    it 'should print book slot' do
      args = {
        "shelves" => [
          BookShelf.new(first_shelf, book)
        ],
        "isbn" => isbn
      }
      find_book_command = FindBookCommand.new
      find_book_command.execute(args)
    end
  end
end
