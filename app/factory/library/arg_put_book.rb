require './app/factory/argument'

class ArgPutBook < Argument
  def get(param)
    params = param.split('|')
    isbn = params[0]
    title = params[1]
    author = params[2..params.size-1][0].split(', ')
    book = Book.new(isbn, title, author)
    {
      "shelves" => Library.instance.shelves,
      "book" => book
    }
  end
end
