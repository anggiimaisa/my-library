require './app/model/book'

describe 'Book' do
  let(:isbn) { "9780747532743" }
  let(:title) { "Harry Potter 1" }
  let(:author) { "J. K. Rowling" }

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

    it 'verify print book format' do
      book = Book.new(isbn, title, author)
      template = "#{isbn} | #{title} | #{author}"
      expect(book.print).to eq(template)
    end
  end

end
