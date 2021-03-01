require './app/factory/argument'

class ArgListBook < Argument
  def get(param = '')
    Library.instance.shelves
  end
end
