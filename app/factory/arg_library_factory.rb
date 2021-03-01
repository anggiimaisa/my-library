require './app/factory/library/arg_build_library'
require './app/factory/library/arg_list_book'
require './app/factory/library/arg_take_book'

class ArgLibraryFactory
  def self.new_arg(command)
    case command
      when 'build_library'
        ArgBuildLibrary.new
      when 'take_book'
        ArgTakeBook.new
      when 'list_book'
        ArgListBook.new
    end
  end
end