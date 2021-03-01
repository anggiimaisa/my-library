require './app/factory/library/arg_find_book'

describe ArgFindBook do
  let(:isbn) { '9780747532743' }
  context 'get' do
    it 'should return an argument for find book command' do
      arg_find_book = ArgFindBook.new
      actual = arg_find_book.get(isbn)
      library = double
      allow(library).to receive(:instance).and_return(Library.instance)
      expectation = {
        'shelves' => library.instance,
        'isbn' => isbn
      }
      expect(actual).to eq(expectation)
    end
  end
end
