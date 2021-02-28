require './app/model/library'

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
end