require './app/model/book'

describe 'Book' do
  let(:isbn) { '9780747532743' }
  let(:second_isbn) { '9780747522743' }
  let(:title) { 'Harry Potter 1' }
  let(:second_title) { 'Harry Potter 2' }
  let(:authors) { ['J. K. Rowling'] }
  let(:author_to_be_searched) { 'Rowling' }
  let(:title_to_be_searched) { 'Harry Potter 1' }

  context 'check existence of Book data' do
    context 'valid?' do
      it 'should return false if book is empty' do
        book = Book.new
        expect(book.valid?).to eq(false)
      end

      it 'should return true if book is not empty' do
        book = Book.new(isbn, title, authors)
        expect(book.valid?).to eq(true)
      end
    end
    context 'empty?' do
      it 'should return true if book is empty' do
        book = Book.new
        expect(book.empty?).to eq(true)
      end

      it 'should return false if book is not empty' do
        book = Book.new(isbn, title, authors)
        expect(book.empty?).to eq(false)
      end
    end
  end
  context 'print' do
    it 'verify print book format' do
      book = Book.new(isbn, title, authors)
      template = "#{isbn} | #{title} | #{authors.join(', ')}"
      expect(book.print).to eq(template)
    end
  end
  context 'check filter book data' do
    context 'include_title?' do
      it 'should return true if book title is found' do
        book = Book.new(isbn, title, authors)
        expect(book.include_title? title_to_be_searched).to eq(true)
      end
    end
    context 'include_author?' do
      it 'should return true if book author is found' do
        book = Book.new(isbn, title, authors)
        expect(book.include_author? author_to_be_searched).to eq(true)
      end
    end
  end
  context 'eql?' do
    it 'should return true if book has the same value' do
      book = Book.new(isbn, title, authors)
      expect(book.eql?Book.new(isbn, title, authors)).to eq(true)
    end
    it 'should return false if book has not the same value' do
      book = Book.new(isbn, title, authors)
      expect(book.eql? Book.new(second_isbn, second_title, authors)).to eq(false)
    end
  end
end
