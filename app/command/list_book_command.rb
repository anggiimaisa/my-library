require_relative '../command'

class ListBookCommand < Command
  def execute(args)
    books = Array.new
    args.each do |book_shelf|
      if !book_shelf.book.empty?
        books << "#{book_shelf.shelf.print}: #{book_shelf.book.print}"
      end
    end
    books
  end
end
