require './app/model/book_shelf'

class Library
  attr_reader :shelves

  def initialize
    @shelves = Array.new
  end

  @@instance = Library.new

  def add (shelf)
    @shelves << BookShelf.new(shelf)
    shelf.print
  end

  def self.instance
    @@instance
  end

  private_class_method :new

end
