require './app/factory/argument'

class ArgListBook < Argument
  def get
    Library.instance
  end
end
