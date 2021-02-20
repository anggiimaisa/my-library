class BookShelf
  attr_reader :shelf, :book

  def initialize(shelf, book)
    @shelf = shelf
    @book = book
  end

  def print
    "#{shelf.print}: #{@book.print}"
  end

end
