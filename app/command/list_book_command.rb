require_relative '../command'

class ListBookCommand < Command
  def execute(args)
    args.each do |book_shelf|
      if !book_shelf.book.empty?
        puts "#{book_shelf.shelf.print}: #{book_shelf.book.print}"
      end
    end
  end
end
