require_relative '../command'

class ListBookCommand < Command
  def execute(args = '')
    library = Library.instance
    library.list_book.each { |book_printed| puts book_printed }
  end
end
