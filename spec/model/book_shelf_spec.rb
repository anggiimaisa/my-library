require './app/model/book_shelf'
require './app/model/shelf'
require './app/model/book'

describe BookShelf do
  let(:slot_id) { '010101' }
  let(:isbn) { '9780747532743' }
  let(:title) { 'Harry Potter 1' }
  let(:author) { ['J. K. Rowling'] }

  context 'print' do
    it 'should return the same value' do
      shelf = Shelf.new(1, 1, 1)
      book = Book.new(isbn, title, author)
      book_shelf = BookShelf.new(shelf, book)
      expect(book_shelf.print).to eq("#{slot_id}: #{isbn} | #{title} | #{author.join(', ')}")
    end
  end

  context 'empty_slot?' do
    it 'should return true if slot is empty' do
      shelf = Shelf.new(1, 1, 1)
      book = Book.new
      book_shelf = BookShelf.new(shelf, book)
      expect(book_shelf.empty_slot?).to eq(true)
    end

    it 'should return false if slot is not empty' do
      shelf = Shelf.new(1, 1, 1)
      book = Book.new(isbn, title, author)
      book_shelf = BookShelf.new(shelf, book)
      expect(book_shelf.empty_slot?).to eq(false)
    end
  end
end
