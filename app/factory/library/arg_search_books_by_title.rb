require './app/factory/argument'

class ArgSearchBooksByTitle < Argument
  def get(param)
    title = param
    {
      "shelves" => Library.instance.shelves,
      "book_title" => title
    }
  end
end