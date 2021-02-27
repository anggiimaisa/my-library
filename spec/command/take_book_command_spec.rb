require './app/command/take_book_command'

describe TakeBookCommand do
  let(:slot_id) { '010101' }
  let(:not_found_slot_id) { '010102' }
  let(:isbn) { '9780747532743' }
  let(:title) { 'Harry Potter 1' }
  let(:author) { ['J. K. Rowling'] }
  let(:book) { Book.new(isbn, title, author) }
  let(:first_shelf) { Shelf.new(1, 1, 1) }
  let(:second_shelf) { Shelf.new(1, 1, 2) }
  let(:args_accept) do
    {
      "shelves" => [
        BookShelf.new(first_shelf, book)
      ],
      "slot_id" => slot_id
    }
  end
  let(:args_failed) do
    {
      "shelves" => [
        BookShelf.new(first_shelf, book)
      ],
      "slot_id" => not_found_slot_id
    }
  end

  context 'execute' do
    context 'happy path' do
      it 'should return message the book slot if slot id is found' do
        take_book_command = TakeBookCommand.new
        actual = take_book_command.execute(args_accept)
        expect(actual["message"]).to eq("Slot #{slot_id} is free")
      end
      it 'should free book attribute if slot id is found' do
        take_book_command = TakeBookCommand.new
        actual = take_book_command.execute(args_accept)
        expect(actual["value"].book.empty?).to eq(true)
      end
    end
    context 'unhappy path' do
      it 'return message invalid code if slot id is not found' do
        take_book_command = TakeBookCommand.new
        actual = take_book_command.execute(args_failed)
        expect(actual["message"]).to eq("Invalid code!")
      end
      it 'return value nil if slot id is not found' do
        take_book_command = TakeBookCommand.new
        actual = take_book_command.execute(args_failed)
        expect(actual["value"]).to eq(nil)
      end
    end
  end
end
