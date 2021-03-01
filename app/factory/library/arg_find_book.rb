require './app/factory/argument'

class ArgFindBook < Argument
  def get(param)
    isbn = param
    {
      "shelves" => Library.instance.shelves,
      "isbn" => isbn
    }
  end
end
