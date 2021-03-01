require './app/factory/argument'

class ArgSearchBooksByAuthor < Argument
  def get(param)
    author = param
    {
      "shelves" => Library.instance.shelves,
      "book_author" => author
    }
  end
end