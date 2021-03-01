require './app/factory/argument'

class ArgBuildLibrary < Argument
  def get(param)
    shelf_size = param
    {
      "shelves" => Library.instance,
      "shelf_size" => shelf_size
    }
  end
end