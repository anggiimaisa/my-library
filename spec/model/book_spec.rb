require './app/model/book'

describe 'Book' do
  let(:isbn) { '9780747532743' }
  let(:title) { 'Harry Potter 1' }
  let(:author) { ['J. K. Rowling'] }
  let(:title_to_be_searched) { 'Harry Potter 1' }

  context 'check existence of Book data' do
    context 'valid?' do
      it 'should return false if book is empty' do
        book = Book.new
        expect(book.valid?).to eq(false)
      end

      it 'should return true if book is not empty' do
        book = Book.new(isbn, title, author)
        expect(book.valid?).to eq(true)
      end
    end
    context 'empty?' do
      it 'should return true if book is empty' do
        book = Book.new
        expect(book.empty?).to eq(true)
      end

      it 'should return false if book is not empty' do
        book = Book.new(isbn, title, author)
        expect(book.empty?).to eq(false)
      end
    end
  end
  context 'print' do
    it 'verify print book format' do
      book = Book.new(isbn, title, author)
      template = "#{isbn} | #{title} | #{author.join(', ')}"
      expect(book.print).to eq(template)
    end
  end
  context 'check filter book data' do
    context 'include_title?' do
      it 'should return true if book title is found' do
        book = Book.new(isbn, title, author)
        expect(book.include_title? title_to_be_searched).to eq(true)
      end
    end
  end
end
