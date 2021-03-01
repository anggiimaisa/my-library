require './app/factory/library/arg_put_book'

describe ArgPutBook do
  let(:isbn) { '9780747532743' }
  let(:title) { 'Harry Potter 1' }
  let(:authors) { ['J. K. Rowling', 'Hanry Ham'] }
  let(:book_string) { "#{isbn}|#{title}|J. K. Rowling, Hanry Ham" }

  context 'get' do
    it 'should return an argument for put book command' do
      arg_put_book = ArgPutBook.new
      actual = arg_put_book.get(book_string)
      library = double
      allow(library).to receive(:instance).and_return(Library.instance)
      expectation = {
        'shelves' => library.instance.shelves,
        'book' => Book.new(isbn, title, authors)
      }
      result = actual['shelves'] == expectation['shelves'] &&
               actual['book'].eql?(expectation['book'])

      expect(result).to eq(true)
    end
  end
end
