require './app/command/library/list_book_command'

describe ListBookCommand do
  let(:slot_id) { '010101' }
  let(:isbn) { '9780747532743' }
  let(:title) { 'Harry Potter 1' }
  let(:author) { ['J. K. Rowling'] }
  let(:book) { Book.new(isbn, title, author) }
  let(:first_shelf) { Shelf.new(1, 1, 1) }
  let(:second_shelf) { Shelf.new(1, 1, 2) }

  context 'execute' do
    it 'should return list of book' do
      library = [
        BookShelf.new(first_shelf, book),
        BookShelf.new(second_shelf, book)
      ]
      list_book_command = ListBookCommand.new
      actual = list_book_command.execute(library)
      expectation = ["010101: #{isbn} | #{title} | #{author.join(', ')}", "010102: #{isbn} | #{title} | #{author.join(', ')}"]
      expect(actual).to eq(expectation)
    end
  end
end
