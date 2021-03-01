require './app/factory/library/arg_search_books_by_title'

describe ArgSearchBooksByTitle do
  let(:title) { 'Harry Potter' }
  context 'get' do
    it 'should return an argument for search books by title command' do
      arg_search_books_by_title = ArgSearchBooksByTitle.new
      actual = arg_search_books_by_title.get(title)
      library = double
      allow(library).to receive(:instance).and_return(Library.instance)
      expectation = {
        'shelves' => library.instance.shelves,
        'book_title' => title
      }
      expect(actual).to eq(expectation)
    end
  end
end
