require './app/factory/library/arg_take_book'

describe ArgTakeBook do
  let(:slot_id) { '010101' }
  context 'get' do
    it 'should return an argument for take book command' do
      arg_take_book = ArgTakeBook.new
      actual = arg_take_book.get(slot_id)
      library = double
      allow(library).to receive(:instance).and_return(Library.instance.shelves)
      expectation = {
        'shelves' => library.instance,
        'slot_id' => slot_id
      }
      expect(actual).to eq(expectation)
    end
  end
end
