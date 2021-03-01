require './app/factory/library/arg_build_library'
require './app/factory/library/arg_list_book'
require './app/factory/library/arg_take_book'
require './app/factory/library/arg_find_book'
require './app/factory/library/arg_put_book'
require './app/factory/library/arg_search_books_by_author'
require './app/factory/library/arg_search_books_by_title'

class ArgLibraryFactory
  def self.new_arg(command)
    case command
      when 'build_library'
        ArgBuildLibrary.new
      when 'take_book'
        ArgTakeBook.new
      when 'list_book'
        ArgListBook.new
      when 'put_book'
        ArgPutBook.new
      when 'find_book'
        ArgFindBook.new
      when 'search_books_by_title'
        ArgSearchBooksByTitle.new
      when 'search_books_by_author'
        ArgSearchBooksByAuthor.new
    end
  end
end