require './app/model/library'

describe Library do
  let(:isbn) { '9780747532743' }
  let(:title) { 'Harry Potter 1' }
  let(:author) { ['J. K. Rowling'] }

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
      book = Book.new(isbn, title, author)
      book_slot = library.allocate_book(book)
      expect(book_slot.print).to eq('010101')
    end
  end
end