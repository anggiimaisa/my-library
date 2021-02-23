require './app/model/library'

describe Library do
  context 'instance' do
    it 'should return same object id for 2 instances' do
      first_library = Library.instance
      second_library = Library.instance
      expect(first_library.object_id).to eq(second_library.object_id)
    end
  end
end