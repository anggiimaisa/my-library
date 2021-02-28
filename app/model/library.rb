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

  def self.instance
    @@instance
  end

  private_class_method :new

end
