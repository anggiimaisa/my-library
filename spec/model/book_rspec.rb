require './app/model/book'

describe Book do
  it 'should return false if book is empty' do
    book = Book.new
    expect(book.valid?).to eq(false)
  end

  it 'should return true if book is not empty' do
    book = Book.new('9780747532743', 'Harry Potter 1', 'J. K. Rowling')
    expect(book.valid?).to eq(true)
  end
end