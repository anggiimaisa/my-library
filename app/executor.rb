class Executor
  def initialize
    @commands = Hash.new
    @commands['build_library'] = BuildLibraryCommand.new
    @commands['put_book'] = PutBookCommand.new
    @commands['take_book_from'] = TakeBookCommand.new
    @commands['find_book'] = FindBookCommand.new
    @commands['list_books'] = ListBookCommand.new
    @commands['search_books_by_title'] = SearchBooksByTitleCommand.new
    @commands['search_books_by_author'] = SearchBooksByAuthorCommand.new
  end
  def execute(command, args)
    @commands[command].execute(args)
  end
end
