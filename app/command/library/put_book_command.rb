require './app/command/command'


class PutBookCommand < Command
  def execute(args)
    shelves = args["shelves"]
    book = args["book"]
    shelves.each do |book_shelf|
      if book_shelf.book.empty?
        book_shelf.book = book
        return { 'message' => "Allocated address: #{book_shelf.shelf.print}" }
      end
    end
    { 'message' => 'All shelves are full!' }
  end
end
