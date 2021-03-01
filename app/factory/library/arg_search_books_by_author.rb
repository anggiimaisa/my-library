require './app/factory/argument'

class ArgSearchBooksByAuthor < Argument
  def get(param)
    author = param
    {
      "shelves" => Library.instance,
      "book_author" => author
    }
  end
end