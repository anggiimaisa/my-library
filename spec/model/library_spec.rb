require './app/model/library'
require './app/command/print_book_command'

describe Library do
  let(:isbn) { '9780747532743' }
  let(:title) { 'Harry Potter 1' }
  let(:author) { ['J. K. Rowling'] }
  let(:book) { Book.new(isbn, title, author) }
  let(:shelf) { Shelf.new(1, 1, 1) }

  context 'instance' do
    it 'should return same object id for 2 instances' do
      first_library = Library.instance
      second_library = Library.instance
      expect(first_library.object_id).to eq(second_library.object_id)
    end
  end
  context 'generate_shelves' do
    it 'should return shelves size' do
      library = Library.instance
      expect(library.generate_shelves(1, 3, 4)).to eq(12)
    end
  end
  context 'allocate_book' do
    it 'should return the first empty slot' do
      library = Library.instance
      book_slot = library.allocate_book(book)
      expect(book_slot.print).to eq('010101')
    end
    it 'should return the second empty slot when the first is not empty' do
      library = Library.instance
      book_slot = library.allocate_book(book)
      expect(book_slot.print).to eq('010102')
    end
  end
  context 'find_book' do
    it 'should return shelf if book is found' do
      library = Library.instance
      book_slot = library.find_book(isbn)
      expect(book_slot.print).to eq('010101')
    end
  end
  context 'take_book' do
    it 'should return shelf' do
      library = Library.instance
      library.allocate_book(book)
      book_slot = library.take_book(shelf)
      expect(book_slot.print).to eq('010101')
    end
  end
  context 'list_book' do
    it 'should return true if library array of book data' do
      library = Library.instance
      actual = library.list_book.kind_of? (Array)
      expect(actual).to eq(true)
    end
  end
end