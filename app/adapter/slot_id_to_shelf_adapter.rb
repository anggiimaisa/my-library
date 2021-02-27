require './app/model/shelf'

class SlotIdToShelfAdapter
  def parse(slot_id)
    Shelf.new(slot_id[0..1].to_i, slot_id[2..3].to_i, slot_id[4..5].to_i)
  end
end
