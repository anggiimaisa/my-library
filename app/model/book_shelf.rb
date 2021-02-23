class BookShelf
  attr_reader :shelf, :book

  def initialize(shelf, book = Book.new)
    @shelf = shelf
    @book = book
  end

  def empty_slot?
    return false unless @book.empty?
    true
  end

  def print
    "#{shelf.print}: #{@book.print}"
  end

end
