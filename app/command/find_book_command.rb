require './app/command'

class FindBookCommand < Command
  def execute(args)
    shelves = args["shelves"]
    isbn = args["isbn"]
    shelves.each do |book_shelf|
      return "Found the book at #{book_shelf.shelf.print}" if book_shelf.book.isbn.eql? isbn
    end
    return 0
  end
end