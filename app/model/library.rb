class Library
  attr_reader :shelves

  def initialize
    @shelves = Array.new
  end

  @@instance = Library.new

  def generate_shelves(total_shelf, total_row, total_column)
    for shelf in 1..total_shelf
      for row in 1..total_row
        for column in 1..total_column
          @shelves << BookShelf.new(Shelf.new(shelf, row, column))
        end
      end
    end
    @shelves.length()
  end

  def allocate_book(book)
    @shelves.each do |book_shelf|
      if book_shelf.book.empty?
        book_shelf.book = book
        return book_shelf.shelf
      end
    end
    return 0
  end

  def self.instance
    @@instance
  end

  private_class_method :new

end
