require './app/model/library'

describe Library do
  let(:slot_id) { '010101' }
  let(:shelf) { Shelf.new(1, 1, 1) }

  context 'instance' do
    it 'should return same object id for 2 instances' do
      first_library = Library.instance
      second_library = Library.instance
      expect(first_library.object_id).to eq(second_library.object_id)
    end
  end
  context 'add' do
    it 'should return slot id if book is added' do
      library = Library.instance
      actual = library.add(shelf)
      expect(actual).to eq(slot_id)
    end
  end
end