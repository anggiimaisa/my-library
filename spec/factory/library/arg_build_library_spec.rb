require './app/factory/library/arg_build_library'

describe ArgBuildLibrary do
  let(:shelf_size) { '2|1|3' }
  context 'get' do
    it 'should return an argument for build library command' do
      arg_build_library = ArgBuildLibrary.new
      actual = arg_build_library.get(shelf_size)
      library = double
      allow(library).to receive(:instance).and_return(Library.instance)
      expectation = {
        'shelves' => library.instance,
        'shelf_size' => shelf_size
      }
      expect(actual).to eq(expectation)
    end
  end
end
