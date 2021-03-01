require './app/factory/library/arg_list_book'

describe ArgListBook do
  context 'get' do
    it 'should return an argument for list book command' do
      arg_list_book = ArgListBook.new
      actual = arg_list_book.get
      library = double
      allow(library).to receive(:instance).and_return(Library.instance)
      expect(actual).to eq(library.instance)
    end
  end
end
