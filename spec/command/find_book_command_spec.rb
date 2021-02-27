require './app/command/find_book_command'

describe FindBookCommand do
  let(:slot_id) { '010101' }
  let(:isbn) { '9780747532743' }
  let(:title) { 'Harry Potter 1' }
  let(:author) { ['J. K. Rowling'] }
  let(:book) { Book.new(isbn, title, author) }
  let(:first_shelf) { Shelf.new(1, 1, 1) }

  context 'execute' do
    it 'should print book slot if book isb is found' do
      args = {
        "shelves" => [
          BookShelf.new(first_shelf, book)
        ],
        "isbn" => isbn
      }
      find_book_command = FindBookCommand.new
      actual = find_book_command.execute(args)
      expect(actual).to eq("Found the book at 010101")
    end
  end
end
