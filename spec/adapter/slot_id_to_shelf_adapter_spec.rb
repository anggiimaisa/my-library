require './app/adapter/slot_id_to_shelf_adapter'

describe SlotIdToShelfAdapter do
  let(:slot_id) { '010101' }
  context 'parse' do
    it 'should return shelf object' do
      adapter = SlotIdToShelfAdapter.new
      shelf = adapter.parse(slot_id)
      expect(shelf.is_a?(Shelf)).to eq(true)
    end
  end
end
