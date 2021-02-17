require './app/model/book'

describe 'Book' do
  let(:slot_id) { '010101' }
  let(:isbn) { '9780747532743' }
  let(:title) { 'Harry Potter 1' }
  let(:author) { 'J. K. Rowling' }

  context 'check existence of Book data' do
    it 'should return false if book is empty' do
      book = Book.new
      expect(book.valid?).to eq(false)
    end

    it 'should return true if book is not empty' do
      book = Book.new(:isbn, :title, :author)
      expect(book.valid?).to eq(true)
    end

    it 'verify print book format' do
      book = Book.new(:isbn, :title, :author)
      template = "#{:isbn} | #{:title} | #{:author}"
      expect(book.print).to eq(template)
    end
  end

end
