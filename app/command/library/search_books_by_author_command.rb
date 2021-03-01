require './app/command/command'

class SearchBooksByAuthorCommand < Command
  def execute(args)
    shelves = args['shelves']
    book_author = args['book_author']
    shelves_book_filtered = Array.new

    shelves.each do |book_shelf|
      if book_shelf.book.include_author? book_author
        shelves_book_filtered << book_shelf.print
      end
    end
    return "Book not found!" unless !shelves_book_filtered.empty?
    shelves_book_filtered
  end
end