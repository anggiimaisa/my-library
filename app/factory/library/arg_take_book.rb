require './app/factory/argument'

class ArgTakeBook < Argument
  def get(param)
    slot_id = param
    {
      "shelves" => Library.instance.shelves,
      "slot_id" => slot_id
    }
  end
end