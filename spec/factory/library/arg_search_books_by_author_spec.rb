require './app/factory/library/arg_search_books_by_author'

describe ArgSearchBooksByAuthor do
  let(:author) { 'Robert' }
  context 'get' do
    it 'should return an argument for search books by author command' do
      arg_search_books_by_author = ArgSearchBooksByAuthor.new
      actual = arg_search_books_by_author.get(author)
      library = double
      allow(library).to receive(:instance).and_return(Library.instance)
      expectation = {
        'shelves' => library.instance.shelves,
        'book_author' => author
      }
      expect(actual).to eq(expectation)
    end
  end
end
