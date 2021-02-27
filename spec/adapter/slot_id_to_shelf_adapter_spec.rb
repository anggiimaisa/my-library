require './app/adapter/slot_id_to_shelf_adapter'

describe SlotIdToShelfAdapter do
  let(:slot_id) { '010101' }
  let(:shelf) { Shelf.new(1, 1, 1) }
  context 'parse' do
    it 'should return shelf object' do
      adapter = SlotIdToShelfAdapter.new
      actual = adapter.parse(slot_id).eql? shelf
      expect(actual).to eq(true)
    end
  end
end
