require './app/command/library/find_book_command'
require './app/command/library/build_library_command'
require './app/command/library/list_book_command'
require './app/command/library/put_book_command'
require './app/command/library/take_book_command'
require './app/command/library/search_books_by_author_command'
require './app/command/library/search_books_by_title_command'
require './app/factory/arg_library_factory'

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
  def execute(command, param)
    if @commands.has_key?(command)
      arg_library_factory = ArgLibraryFactory.new_arg(command)
      args = arg_library_factory.get(param)
      @commands[command].execute(args)
    else
      { 'message' => "Program cannot recognize #{command} command" }
    end
  end
end
