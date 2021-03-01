require './app/command/command'

class SearchBooksByTitleCommand < Command
  def execute(args)
    shelves = args['shelves']
    book_title = args['book_title']
    shelves_book_filtered = Array.new

    shelves.each do |book_shelf|
      if book_shelf.book.include_title? book_title
        shelves_book_filtered << book_shelf.print
      end
    end
    return { 'message' => 'Book not found!' } if shelves_book_filtered.empty?
    { 'message' => shelves_book_filtered }
  end
end