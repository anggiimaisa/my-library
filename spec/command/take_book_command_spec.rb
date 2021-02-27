require './app/command/take_book_command'

describe TakeBookCommand do
  let(:slot_id) { '010101' }
  let(:isbn) { '9780747532743' }
  let(:title) { 'Harry Potter 1' }
  let(:author) { ['J. K. Rowling'] }
  let(:book) { Book.new(isbn, title, author) }
  let(:first_shelf) { Shelf.new(1, 1, 1) }
  let(:second_shelf) { Shelf.new(1, 1, 2) }

  context 'execute' do
    it 'should free the book slot if slot id is found' do
      args = {
        "shelves" => [
          BookShelf.new(first_shelf, book)
        ],
        "slot_id" => slot_id
      }
      take_book_command = TakeBookCommand.new
      actual = take_book_command.execute(args)
      expect(actual).to eq("Slot #{slot_id} is free")
    end
  end
end
